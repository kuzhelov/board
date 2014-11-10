do (homeController = module.exports) ->
    
    homeController.init = (app) -> 
        app.get     '/',    renderHomePage
    
    
    
    renderHomePage = (req, res) ->
        dataServer = require '../data'
            
        dataServer.getCategories (err, categories) ->
            res.render 'index', 
                {
                    title: 'The Board',
                    error: err,
                    categories: categories
                }