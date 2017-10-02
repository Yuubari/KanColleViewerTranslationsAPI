from pyramid.config import Configurator
from sqlalchemy import engine_from_config

from .models import (
    DBSession,
    Base,
    )

from .views import ContentTypePredicate

def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    engine = engine_from_config(settings, 'sqlalchemy.')
    DBSession.configure(bind=engine)
    Base.metadata.bind = engine
    config = Configurator(settings=settings)
    config.include('pyramid_chameleon')
    config.add_static_view('static', 'static', cache_max_age=3600)

    config.add_route('home', '/')
    config.add_route('version', '/version/')

    valid_resources = componenttypes('component', 'ships', 'shiptypes', 'equipment', 'quests', 'expeditions')
    config.add_view_predicate('content_type', ContentTypePredicate)
    config.add_route('resources', '/api/{component}/', custom_predicates=(valid_resources,))
    config.add_route('submission', '/api/submit/{component}', custom_predicates=(valid_resources,))

    config.scan()
    return config.make_wsgi_app()

def componenttypes(segment_name, *valid_names):
    def predicate(info, request):
        if info['match'][segment_name] in valid_names:
            return True
    return predicate

