var app = require("express")();
var http = require("http");

app.set('view engine', 'vash');

app.get('/', function(req, res) {
    res.render('index', {title: 'Main page', content: 'Nothing special could be found here now'});
});

var server = http.createServer(app);
server.listen(process.env.PORT, process.env.IP);
