({
	Indian : function(myComponent) {
		var FName= myComponent.get("v.fName");
        var LName=myComponent.get("v.lName");
        myComponent.set("v.result",FName + " "+LName);
	},
    doAmerican : function(myComponent)
    {
        var FName=myComponent.get("v.fName");
        var LName=myComonent.get("v.lName");
        var resultName= FName+" "+LName;
        myComponent.set("v.result",resultName)
        
    },
})