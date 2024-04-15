({
	fetchAccount : function(component, event, helper) {
	
        var acc = component.get("c.getAccount");
        
        acc.setCallback(this, function(response) {
            component.set("v.MyAccount", response.getReturnValue());
            console.log("------- In call back ------------");
            });
        
        $A.enqueueAction(acc);
	}
})