do (dataServer = module.exports) ->

    seedData = require './seedData'

    dataServer.getCategories = (processResult) -> 
        processResult null, seedData.notes
