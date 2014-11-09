var app = require("express")();
var http = require("http");
var controllers = require('./controllers');

controllers.init(app);
app.set('view engine', 'vash');

var server = http.createServer(app);
server.listen(process.env.PORT, process.env.IP);