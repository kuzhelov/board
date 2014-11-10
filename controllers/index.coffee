do (controllers = module.exports) ->
    
    controllers.init = (app) -> 
        for controller in ['./homeController'] 
            (require controller).init app
    
