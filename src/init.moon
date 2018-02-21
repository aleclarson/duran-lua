
export duran = {}

require 'duran.expose'
require 'duran.schema'
require 'duran.admin'

box.once 'duran', ->

  duran.expose 'public', {
    'duran.spaces'
  }

  duran.expose 'admin', {
    'duran.space_create'
    'duran.space_rename'
    'duran.space_format'
    'duran.space_drop'
    'duran.index_create'
    'duran.index_rename'
    'duran.index_alter'
    'duran.index_drop'
  }
