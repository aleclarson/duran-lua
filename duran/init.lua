duran = { }
require('duran.expose')
require('duran.schema')
require('duran.admin')
return box.once('duran', function()
  duran.expose('public', {
    'duran.spaces'
  })
  return duran.expose('admin', {
    'duran.space_create',
    'duran.space_rename',
    'duran.space_format',
    'duran.space_drop',
    'duran.index_create',
    'duran.index_rename',
    'duran.index_alter',
    'duran.index_drop'
  })
end)
