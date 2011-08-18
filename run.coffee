connect = require 'connect'
http = require 'http'

app = connect()
app.use(connect.logger())
app.use(connect.static(__dirname))

http.createServer(app).listen(1337)
console.log('Server running at http://127.0.0.1:1337/')
