(function(controllers) {
    
    controllers.init = function(app)
    {
       require("./homeController").init(app);
    };
    
})(module.exports);