
mods = [
  require('./web_service')
  require('./scrapers/rooter')
]

for m in mods
  for k,v of m
    exports[k] = v
