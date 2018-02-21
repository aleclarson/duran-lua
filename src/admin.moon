
duran.space_create = (name, opts) ->
  space = box.schema.space.create name, opts
  return space.id

duran.space_rename = (id, name) ->
  box.space[id]\rename name
  return

duran.space_format = (id, fields) ->
  box.space[id]\format fields
  return

duran.space_drop = (id) ->
  box.space[id]\drop!
  return

duran.index_create = (space_id, name, opts) ->
  index = box.space[space_id]\create_index name, opts
  return index.iid

duran.index_rename = (space_id, index_id, name) ->
  box.space[space_id].index[index_id]\rename name
  return

duran.index_alter = (space_id, index_id, opts) ->
  box.space[space_id].index[index_id]\alter opts
  return

duran.index_drop = (space_id, index_id) ->
  box.space[space_id].index[index_id]\drop!
  return
