import os

from setuptools import setup, find_packages

here = os.path.abspath(os.path.dirname(__file__))
with open(os.path.join(here, 'README.md')) as f:
    README = f.read()
with open(os.path.join(here, 'CHANGES.txt')) as f:
    CHANGES = f.read()

requires = [
    'pyramid',
    'pyramid_chameleon',
    'pyramid_debugtoolbar',
    'pyramid_tm',
    'SQLAlchemy',
    'transaction',
    'zope.sqlalchemy',
    'waitress',
    'psycopg2',
    ]

setup(name='KCV',
      version='0.1',
      description='KanColleViewer! Translations API Server',
      long_description=README + '\n\n' + CHANGES,
      classifiers=[
        "Programming Language :: Python",
        "Framework :: Pyramid",
        "Topic :: Internet :: WWW/HTTP",
        "Topic :: Internet :: WWW/HTTP :: WSGI :: Application",
        ],
      author='Yuubari',
      author_email='',
      url='https://github.com/Yuubari/KanColleViewerTranslationsAPI',
      keywords='web wsgi bfg pylons pyramid',
      packages=find_packages(),
      include_package_data=True,
      zip_safe=False,
      test_suite='kcv',
      install_requires=requires,
      entry_points="""\
      [paste.app_factory]
      main = kcv:main
      [console_scripts]
      initialize_KCV_db = kcv.scripts.initializedb:main
      import_KCV_xml = kcv.scripts.import:main
      """,
      )
