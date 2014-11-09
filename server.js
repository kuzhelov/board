var express = require("express");
var app = express();
var http = require("http");
var controllers = require('./controllers');

// configuring routes
controllers.init(app);

// configuring view engine
app.set('view engine', 'vash');

// open public assets folder through middleware
app.use(express.static(__dirname + '/public'));

var server = http.createServer(app);
server.listen(process.env.PORT, process.env.IP);