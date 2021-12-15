import bottle

@bottle.route('/')
def cyberprez():
  return "Hello World"

bottle.run(host='0.0.0.0', port=8080)
