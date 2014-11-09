(function(dataServer) {

    var seedData = require("./seedData.js");

    dataServer.getCategories = function(processResult) {
        processResult(null, seedData.notes);
    };

})(module.exports);