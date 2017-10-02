# -*- coding: utf-8 -*-
import os
import sys
import transaction

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
    print('usage: %s <config_uri> [var=value]\n'
          '(example: "%s development.ini")' % (cmd, cmd))
    sys.exit(1)


def main(argv=sys.argv):
    if len(argv) < 2:
        usage(argv)
    config_uri = argv[1]
    options = parse_vars(argv[2:])
    setup_logging(config_uri)
    settings = get_appsettings(config_uri, options=options)
    engine = engine_from_config(settings, 'sqlalchemy.')
    DBSession.configure(bind=engine)
    Base.metadata.create_all(engine)
    with transaction.manager:
        cultures = [
                Culture(name='en'), 
                Culture(name='zh-CN'), 
                Culture(name='ko-KR'), 
                Culture(name='ja')
                ]
        components = [
                Component(name='app'), 
                Component(name='ships'), 
                Component(name='shiptypes'), 
                Component(name='equipment'), 
                Component(name='quests'), 
                Component(name='operations'), 
                Component(name='expeditions')
                ]
        DBSession.add_all(cultures)
        DBSession.add_all(components)
        DBSession.flush()
        versions = [Version(culture = x.name, component = y.name, version="1", url="") for x in cultures for y in components]
        DBSession.add_all(versions)

