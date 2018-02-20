package = 'duran'
version = '0.0.1-1'

source = {
  url = 'git://github.com/aleclarson/duran-lua.git',
  tag = '0.0.1',
}

dependencies = {
  'lua >= 5.1',
}

build = {
  type = 'builtin',
  modules = {
    ['duran'] = 'duran/init.lua',
  }
}

