
duran.expose = (id, funcs) ->
  ns = box.schema.user
  ns = box.schema.role unless ns.exists id
  for func in *funcs
    box.schema.func.create func, if_not_exists: true
    ns.grant id, 'execute', 'function', func
