duran.space_create = function(name, opts)
  local space = box.schema.space.create(name, opts)
  return space.id
end
duran.space_rename = function(id, name)
  box.space[id]:rename(name)
end
duran.space_format = function(id, fields)
  box.space[id]:format(fields)
end
duran.space_drop = function(id)
  box.space[id]:drop()
end
duran.index_create = function(space_id, name, opts)
  local index = box.space[space_id]:create_index(name, opts)
  return index.iid
end
duran.index_rename = function(space_id, index_id, name)
  box.space[space_id].index[index_id]:rename(name)
end
duran.index_alter = function(space_id, index_id, opts)
  box.space[space_id].index[index_id]:alter(opts)
end
duran.index_drop = function(space_id, index_id)
  box.space[space_id].index[index_id]:drop()
end
