({
	doIndian : function(component, event, helper) {
		var FName=component.get("v.fName");
        var LName=component.get("v.lName");
        var resultName= FName+" "+LName;
        component.set("v.result",resultName);
        console.log("hey");
	},
    doAmerican : function(component, event, helper) {
		var FName=component.get("v.fName");
        var LName=component.get("v.lName");
        var resultName= LName+" "+FName;
        component.set("v.result",resultName);
        console.log("hey");
	}
    
})