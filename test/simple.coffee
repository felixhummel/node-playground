assert = require 'assert'

app = require 'app.coffee'
srv = app.server

module.exports=
  'Base URL is reachable': ->
    req=
      url: '/'
      timeout: 500
    resp=
      status: 200
    assert.response srv, req, resp
