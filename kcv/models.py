from sqlalchemy import (
    Column,
    Index,
    Integer,
    Text,
    String,
    ForeignKey,
    )

from sqlalchemy.ext.declarative import declarative_base

from sqlalchemy.orm import (
    scoped_session,
    sessionmaker,
    relationship,
    backref,
    )

from zope.sqlalchemy import ZopeTransactionExtension

DBSession = scoped_session(sessionmaker(extension=ZopeTransactionExtension()))
Base = declarative_base()

# Models for version queries

class Component(Base):
    __tablename__ = 'components'
    name = Column(String, primary_key=True)

class Culture(Base):
    __tablename__ = 'cultures'
    name = Column(String, primary_key=True)

class Version(Base):
    __tablename__ = 'versions'
    component = Column(String, ForeignKey('components.name'), primary_key=True)
    culture = Column(String, ForeignKey('cultures.name'), primary_key=True)
    version = Column(String)
    url = Column(String)

# Translations models

class TranslationShip(Base):
    __tablename__ = 'tl_ships'
    culture = Column(String, ForeignKey('cultures.name'), primary_key=True)
    name_ja = Column(String, primary_key=True)
    name = Column(String)

class TranslationShipType(Base):
    __tablename__ = 'tl_shiptypes'
    culture = Column(String, ForeignKey('cultures.name'), primary_key=True)
    id = Column(String, primary_key=True)
    #id = Column(Integer, primary_key=True)
    name_ja = Column(String)
    name = Column(String)

class TranslationQuest(Base):
    __tablename__ = 'tl_quests'
    culture = Column(String, ForeignKey('cultures.name'), primary_key=True)
    id = Column(String, primary_key=True)
    title_ja = Column(String)
    title = Column(String)
    description_ja = Column(String)
    description = Column(String)

class TranslationEquipment(Base):
    __tablename__ = 'tl_equipment'
    culture = Column(String, ForeignKey('cultures.name'), primary_key=True)
    name_ja = Column(String, primary_key=True)
    name = Column(String)

class TranslationExpedition(Base):
    __tablename__ = 'tl_expeditions'
    culture = Column(String, ForeignKey('cultures.name'), primary_key=True)
    id = Column(String, primary_key=True)
    title_ja = Column(String)
    title = Column(String)
    description_ja = Column(String)
    description = Column(String)

