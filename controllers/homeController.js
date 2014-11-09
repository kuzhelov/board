(function(homeController) {
    
    homeController.init = function(app) {
        app.get('/', renderHomePage);
    };
    
    ////
    
    function renderHomePage(req, res) {
         var dataServer = require("../data");
            
            dataServer.getCategories(function(err, categories) {
                res.render('index', {
                    title: 'The Board',
                    error: err,
                    categories: categories
                });
            });
    }
    
})(module.exports);