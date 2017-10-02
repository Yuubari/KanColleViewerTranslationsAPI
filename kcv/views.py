from __future__ import print_function
from pyramid.response import Response
from pyramid.view import view_config
from xml.dom import minidom

import sys, traceback

from sqlalchemy.exc import DBAPIError

from .models import (
    DBSession,
    Version,
    Culture,
    TranslationShip,
    TranslationShipType,
    TranslationQuest,
    TranslationEquipment,
    TranslationExpedition,
    )

import logging

@view_config(route_name='version', renderer='json', request_method='POST', request_param=('api=1', 'culture'))
def versions_json(request):
    culture = request.POST['culture']

    if not cultureAvailable(culture):
        culture = 'en'
        
    try:
        versions = DBSession.query(Version).filter_by(culture=culture).all()
    except DBAPIError:
        return Response(conn_err_msg, content_type='text/plain', status_int=500)

    response = formJSONResponse({ 'api_url': 'http://kcvapi.koumakan.jp/api/', 'selected_culture' : culture, 'components': [dict(type=v.component, version=v.version, url=v.url) for v in versions] })

    return response

@view_config(route_name='version', renderer='templates/api/versions.xml.pt', request_method='GET')
def versions_xml(request):
    '''Renders the old style XML for versioning
    '''
    culture = 'en'
    request.response.content_type = 'text/xml'
    try:
        versions = DBSession.query(Version).filter_by(culture=culture).all()
    except DBAPIError:
        return Response(conn_err_msg, content_type='text/plain', status_int=500)

    payload = [dict(type=typeToXMLType(v.component), version=v.version) for v in versions]

    return { 'versions': payload }

@view_config(route_name='resources', renderer='json', request_method='POST', request_param=('api=1', 'culture'))
def resources_json(request):
    culture = request.POST['culture']

    if not cultureAvailable(culture):
        culture = 'en'
        
    resourcetype = request.matchdict['component']

    try:
        resources = DBSession.query(resourceTypeByString(resourcetype)).filter_by(culture=culture).all()
        version = DBSession.query(Version).filter_by(culture=culture, component=resourcetype).first()
    except DBAPIError:
        return Response(conn_err_msg, content_type='text/plain', status_int=500)

    payload = payloadByType(resourcetype, resources)
    
    return formJSONResponse({ 'version': version.version, resourcetype: payload })

@view_config(route_name='resources', request_method='GET')
def resources_xml(request):
    culture = "en"
    resourcetype = request.matchdict['component']

    try:
        resources = DBSession.query(resourceTypeByString(resourcetype)).filter_by(culture=culture).all()
        version = DBSession.query(Version).filter_by(culture=culture, component=resourcetype).first()
    except DBAPIError:
        return Response(conn_err_msg, content_type='text/plain', status_int=500)

    payload = payloadXmlByType(resourcetype, resources, version)

    return Response(payload, content_type='text/xml')

@view_config(route_name='submission', renderer='json', request_method='POST', content_type='application/json')
def resources_submission(request):
    resultdesc = ""

    try:
        culture = request.json_body['culture']
        resourcetype = request.matchdict['component']
        data = request.json_body['rawdata']

        if culture == None:
            resultdesc += " Unsupported culture."
            return formJSONResponse({ 'success': False, 'verbose': resultdesc })

        if not cultureAvailable(culture):
            culture = "en"

        if request.json_body['api_version'] != "1":
            raise ValueError
    except:
        exc_type, exc_value, exc_traceback = sys.exc_info()

        return Response("This request's body is not the body we were looking for.", content_type='text/plain')

    resultdesc = "Resource type: %s. Total entries submitted: %d." % (resourcetype, len(data))
    insert = None
    # Analyse raw data and assemble translation table entries based on resource type
    if resourcetype == 'quests':
        insert = [TranslationQuest(
            culture = culture,
            id = q['api_no'],
            title_ja = q['api_title'],
            description_ja = q['api_detail'],
            title = "",
            description = "",
            ) for q in data if len(DBSession.query(
                resourceTypeByString(resourcetype)).
                filter_by(culture=culture, id=str(q['api_no'])).
                all())==0]

    elif resourcetype == 'ships':
        insert = [TranslationShip(
            culture = culture,
            name_ja = s['api_name'],
            name = "",
            ) for s in data if len(DBSession.query(
                resourceTypeByString(resourcetype)).
                filter_by(culture=culture, name_ja=s['api_name']).
                all())==0]

    elif resourcetype == 'shiptypes':
        insert = [TranslationShipType(
            culture = culture,
            id = st['api_id'],
            name_ja = st['api_name'],
            name = "",
            ) for st in data if len(DBSession.query(
                resourceTypeByString(resourcetype)).
                filter_by(culture=culture, name_ja=st['api_name']).
                all())==0]

    elif resourcetype == 'equipment':
        insert = [TranslationEquipment(
            culture = culture,
            name_ja = i['api_name'],
            name = "",
            ) for i in data if len(DBSession.query(
                resourceTypeByString(resourcetype)).
                filter_by(culture=culture, name_ja=i['api_name']).
                all())==0]

    #elif resourcetype == 'operations':
        # Parse operations

    #elif resourcetype == 'expeditions':
        # Parse expeditions

    else:
        resultdesc += " Unsupported resource type."
        return formJSONResponse({ 'success': False, 'verbose': resultdesc })

    # Insert data and return success
    try:
        DBSession.add_all(insert)

    except:
        resultdesc += " Failed to insert data."
        return formJSONResponse({ 'success': False, 'verbose': resultdesc })

    return formJSONResponse({ 'success': True, 'verbose': resultdesc })

conn_err_msg = """\
Pyramid is having a problem connecting to the database. 
"""

def cultureAvailable(culture):
    return (DBSession.query(Culture).filter_by(name=culture).first() != None)

def formJSONResponse(response):
    z = response.copy()
    z.update({'api_version': '1.0'})
    return z

def typeToXMLType(lowercase):
    result = lowercase.capitalize()
    if result == 'Shiptypes':
        result = 'ShipTypes'
    return result

def resourceTypeByString(type):
    return {
        'ships': TranslationShip,
        'shiptypes': TranslationShipType,
        'equipment': TranslationEquipment,
        'quests': TranslationQuest,
        'expeditions': TranslationExpedition,
    }.get(type, None)

def payloadByType(type, resources):
    payload = None
    
    if type=='ships': 
        payload = [dict(name=r.name, name_ja=r.name_ja) for r in resources]
    if type=='shiptypes':
        payload = [dict(id=r.id, name=r.name, name_ja=r.name_ja) for r in resources]
        log = logging.getLogger(__name__)
    if type=='equipment':
        payload = [dict(name=r.name, name_ja=r.name_ja) for r in resources]
    if type=='quests': 
        payload = [dict(id=r.id, title=r.title, description=r.description, title_ja=r.title_ja, description_ja=r.description_ja) for r in resources]
    if type=='expeditions': 
        payload = [dict(id=r.id, title=r.title, description=r.description, title_ja=r.title_ja, description_ja=r.description_ja) for r in resources]

    return payload

def payloadXmlByType(type, resources, version):
    doc = minidom.Document()

    root = doc.createElement({
            'equipment': "Equipment",
            'ships': "Ships",
            'quests': "Quests",
            'shiptypes': "ShipTypes"
            }.get(type, "Unknown"))

    root.setAttribute("Version", version.version)
    doc.appendChild(root)

    if (type == 'equipment') or (type == 'ships') or (type == 'shiptypes'):

        for r in resources:
            tag_ja = "JP-Name"
            tag_tr = "TR-Name"
            if r.name == "":
                continue
            item = doc.createElement({
                    'equipment': 'Item',
                    'ships': 'Ship',
                    'shiptypes': 'ShipType',
                    'quests': 'Quest'
                    }.get(type, "Something"))
            root.appendChild(item)
            name1 = doc.createElement(tag_ja)
            name2 = doc.createElement(tag_tr)
            text1 = doc.createTextNode(r.name_ja)
            text2 = doc.createTextNode(r.name)
            name1.appendChild(text1)
            name2.appendChild(text2)
            item.appendChild(name1)
            item.appendChild(name2)
            root.appendChild(item)

    if type == 'quests':

        for r in sorted(resources, key=lambda res: res.id):
            tag_ja = "JP-Name"
            tag_tr = "TR-Name"
            tag_ja_detail = "JP-Detail"
            tag_tr_detail = "TR-Detail"
            tag_id = "ID"
            #if r.title == "":
            #    continue
            item = doc.createElement({
                    'equipment': 'Item',
                    'ships': 'Ship',
                    'shiptypes': 'ShipType',
                    'quests': 'Quest'
                    }.get(type, "Something"))
            root.appendChild(item)
            id = doc.createElement(tag_id)
            id_text = doc.createTextNode(r.id)
            id.appendChild(id_text)

            name1 = doc.createElement(tag_ja)
            name2 = doc.createElement(tag_tr)
            text1 = doc.createTextNode(r.title_ja)
            text2 = doc.createTextNode(r.title)

            desc1 = doc.createElement(tag_ja_detail)
            desc2 = doc.createElement(tag_tr_detail)
            dtext1 = doc.createTextNode(r.description_ja)
            dtext2 = doc.createTextNode(r.description)

            name1.appendChild(text1)
            name2.appendChild(text2)
            desc1.appendChild(dtext1)
            desc2.appendChild(dtext2)

            item.appendChild(id)
            item.appendChild(name1)
            item.appendChild(name2)
            item.appendChild(desc1)
            item.appendChild(desc2)
            root.appendChild(item)

    return doc.toprettyxml(indent="  ")

# Custom view predicates
class ContentTypePredicate(object):
    def __init__(self, val, config):
        self.val = val

    def text(self):
        return 'content type = %s' % self.val
    phash = text

    def __call__(self, context, request):
        return request.content_type == self.val

