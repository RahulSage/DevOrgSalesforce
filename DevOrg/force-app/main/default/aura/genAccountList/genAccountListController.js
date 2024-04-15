({
    doFetchAccounts : function(component, event, helper) {
        console.log("****In Controller****")
        
        var rating = event.getParam("selRating");
        var acc =component.get("c.fetchAccount");
        acc.setParam("rating",rating);
        acc.setCallback(this,function(res){
            console.log("****In callback****");
            component.set("{!v.genAccounts}",res.getReturnValue());
        });
        $A.enqueueAction(acc);
    }
})