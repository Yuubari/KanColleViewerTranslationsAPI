KanColleViewer! Translations API Server
--

KCV API Server is a companion web application for KanColleViewer! builds based on [Yuubari's fork](https://github.com/Yuubari/KanColleViewer). It serves version information and translations for the Updater class (KanColleWrapper\Updater.cs). The best way to serve it is using Apache's [mod_wsgi](https://pypi.python.org/pypi/mod_wsgi) or a similar WSGI provider. It was made using the awesome [Pyramid](https://trypyramid.com/) web framework.

### Getting Started

You will need to set up a virtual environment (venv) for this app. Please refer to [venv documentation](https://docs.python.org/3.5/library/venv.html) for detailed instructions. Clone this app to a subdirectory in the root of the virtual environment.

Make sure to properly configure SQLAlchemy database URLs in the .ini files.

#### Development:

```bash
cd <directory containing this file>
$VENV/bin/pip install -e .
$VENV/bin/initialize_KCV_db development.ini
$VENV/bin/pserve development.ini
```

This will install all required dependencies.

#### Production (Apache example):

The app must be properly installed (`pip install`).

Modify kcvapi.wsgi to include the full path to your production.ini file and use this in Apache's VirtualHost block, provided you have mod_wsgi installed (important: the two KCVAPI_ defines MUST have unique names across the entire scope of httpd.conf and its included files):

```
Define KCVAPI_VIRTUALENV_PATH /path/to/virtualenv-with-kcv-api-server-root
Define KCVAPI_WSGI_GROUP_NAME

WSGIApplicationGroup %{GLOBAL}
WSGIProcessGroup ${KCVAPI_WSGI_GROUP_NAME}
WSGIScriptAlias / ${KCVAPI_VIRTUALENV_PATH}/KCV/kcvapi.wsgi
WSGIDaemonProcess ${KCVAPI_WSGI_GROUP_NAME} processes=X threads=Y display-name=%{GROUP} python-path=${KCVAPI_VIRTUALENV_PATH}/lib/python3.6/site-packages
WSGIImportScript ${KCVAPI_VIRTUALENV_PATH}/KCV/kcvapi.wsgi process-group=${KCVAPI_WSGI_GROUP_NAME} application-group=%{GLOBAL}

```

### Sample SQL Dump

There is an SQL dump provided, made using PostgreSQL 9.6.x and containing translations for English.

### Configuring KanColleViewer!

Change the `KcvApiUrl` variable (in KanColleViewer's project properties, settings section) to your API endpoint, ending with `/version/`.
