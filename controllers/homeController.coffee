do (homeController = module.exports) ->
    
    homeController.init = (app) -> 
        app.get     '/',    renderHomePage
    
    require 'promise'

    renderHomePage = (req, res) ->
        
        dataServer = require '../data'
            
        dataServer.getCategories()
            .then 
                (categories) -> res.render 'index', { title: 'The Board', categories: categories },
                (error) -> res.render 'index', { error:  error }
            .done()