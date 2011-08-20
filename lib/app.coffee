connect = require 'connect'
http = require 'http'

STATIC_DIR = __dirname + '/..'
app = connect()
app.use connect.logger()
app.use connect.static(STATIC_DIR)

module.exports =
  app: app
  server: http.createServer(app)
