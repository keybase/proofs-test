
mods = [
  require('./constants')
  require('./scrapers/rooter')
  require('./web_service')
  require('./alloc')
]

for m in mods
  for k,v of m
    exports[k] = v
