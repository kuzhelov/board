express = require 'express'
app = express()
http = require 'http'
controllers = require './controllers'

# configuring routes
controllers.init app

# configuring view engine
app.set 'view engine', 'vash'

# open public assets folder through middleware
app.use (express.static "#{__dirname}/public")

server = http.createServer app
server.listen process.env.PORT, process.env.IP