do (dataServer = module.exports) ->

    seedData = require './seedData.js'
    
    Promise = require 'promise'
    dataServer.getCategories = () -> 
        return new Promise (fulfill, reject) ->
            fulfill seedData.notes