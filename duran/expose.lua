duran.expose = function(id, funcs)
  local ns = box.schema.user
  if not (ns.exists(id)) then
    ns = box.schema.role
  end
  for _index_0 = 1, #funcs do
    local func = funcs[_index_0]
    box.schema.func.create(func, {
      if_not_exists = true
    })
    ns.grant(id, 'execute', 'function', func)
  end
end
