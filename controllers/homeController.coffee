do (homeController = module.exports) ->
    
    homeController.init = (app) -> 
        app.get     '/',    renderHomePage
    
    require 'promise'

    renderHomePage = (req, res) ->
        
        dataServer = require '../data'
        
        model = { title: 'The Board', categories: null }
        
        dataServer.getCategories()
            .then(
                (categories) -> model.categories = categories,
                (error) -> model.error = error
            ).done(   
                () -> res.render 'index', model
            )