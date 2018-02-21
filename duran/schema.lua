duran.spaces = function()
  local spaces = { }
  local index_maps = { }
  for _, space in box.space._vspace:pairs() do
    if space[3]:sub(1, 1) ~= '_' then
      local index_map = { }
      index_maps[space.id] = index_map
      spaces[space.name] = {
        id = space.id,
        format = space.format,
        field_count = space.field_count,
        index_map = index_map
      }
    end
  end
  for _, index in box.space._vindex:pairs() do
    local index_map = index_maps[index.id]
    if index_map then
      index_map[index.name] = {
        id = index.iid,
        unique = index.opts.unique
      }
    end
  end
  return spaces
end
