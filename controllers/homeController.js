(function(homeController) {
    
    homeController.init = function(app) {
        app.get('/', function(req, res) {
            
            var model = {
                title: 'Main page',
                content: 'Nothing special could be found here now'
            };
            
            res.render('index', model);
        });
    }
    
})(module.exports);