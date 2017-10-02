from pyramid.paster import get_app, setup_logging
import os
os.environ['PYTHON_EGG_CACHE'] = '/tmp/kcvapi.egg-cache'

## SET THE INI PATH TO USE THIS WITH APACHE mod_wsgi
#ini_path = '/home/webapps/kcvapi/KCV/production.ini'

setup_logging(ini_path)
application = get_app(ini_path, 'main')
