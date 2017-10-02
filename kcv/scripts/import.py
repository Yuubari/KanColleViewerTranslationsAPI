# -*- coding: utf-8 -*-
from __future__ import print_function, unicode_literals
import os
import sys
import transaction
from xml.etree import ElementTree
#from xml.sax import make_parser
#from xml.sax.handler import ContentHandler

from sqlalchemy import engine_from_config

from pyramid.paster import (
    get_appsettings,
    setup_logging,
    )

from pyramid.scripts.common import parse_vars

from ..models import (
    DBSession,
    Component,
    Culture,
    Version,
    TranslationShip,
    TranslationShipType,
    TranslationQuest,
    TranslationEquipment,
    TranslationExpedition,
    Base,
    )


def usage(argv):
    cmd = os.path.basename(argv[0])
    print('usage: %s <config_uri> <xml_file_name> <culture> [var=value]\n'
          '(example: "%s development.ini Quests.xml en")' % (cmd, cmd))
    sys.exit(1)


def main(argv=sys.argv):
    if len(argv) < 4:
        usage(argv)
    config_uri = argv[1]
    filename = argv[2]
    culture = argv[3]
    options = parse_vars(argv[4:])
    setup_logging(config_uri)
    settings = get_appsettings(config_uri, options=options)
    engine = engine_from_config(settings, 'sqlalchemy.')
    DBSession.configure(bind=engine)
    Base.metadata.create_all(engine)
    with transaction.manager:
        xml = ElementTree.parse(filename)
        root = xml.getroot()
        if root.tag == 'Quests':
            print('Parsing Quests data.')
            quests = [TranslationQuest(
                culture = culture,
                id = x.findtext('ID'),
                title_ja = x.findtext('JP-Name'), 
                title = x.findtext('TR-Name'), 
                description_ja = x.findtext('JP-Detail'), 
                description = x.findtext('TR-Detail')
                ) for x in root.findall('Quest')]
            DBSession.add_all(quests)
        
        elif root.tag == 'Ships':
            print('Parsing Ships data.')
            ships = [TranslationShip(
                culture = culture,
                name_ja = x.findtext('JP-Name'), 
                name = x.findtext('TR-Name')
                ) for x in root.findall('Ship')]
            DBSession.add_all(ships)

        elif root.tag == 'ShipTypes':
            print('Parsing ShipTypes data.')
            shiptypes = [TranslationShipType(
                culture = culture,
                id = x.findtext('ID'),
                name_ja = x.findtext('JP-Name'), 
                name = x.findtext('TR-Name')
                ) for x in root.findall('Type')]
            DBSession.add_all(shiptypes)

        elif root.tag == 'Equipment':
            print('Parsing ShipTypes data.')
            equipment = [TranslationEquipment(
                culture = culture,
                name_ja = x.findtext('JP-Name'), 
                name = x.findtext('TR-Name')
                ) for x in root.findall('Item')]
            DBSession.add_all(equipment)


#    parser = make_parser()
#    handler = TranslationsHandler()
#    parser.setContentHandler(handler)
#    parser.parse(open(filename))

#class TranslationsHandler(ContentHandler):
#    def startElement(self, name, attrs):
#        if name == 'Quests':
#            print("Quests start")
#    def endElement(self, name):
#        if name == 'Quests':
#            print("Quests end")

