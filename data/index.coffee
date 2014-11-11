do (dataServer = module.exports) ->

    seedData = require './seedData'
    
    Promise = require 'promise'
    dataServer.getCategories = () -> 
        return new Promise (fulfill, reject) ->
            fulfill seedData.notes
