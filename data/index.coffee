do (dataServer = module.exports) ->

    seedData = require './seedData.js'

    dataServer.getCategories = (processResult) -> 
        processResult null, seedData.notes
