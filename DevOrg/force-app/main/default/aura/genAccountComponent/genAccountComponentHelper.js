({
    fetchAccountFromHelper : function(myComponent) {
        console.log("****In Helper****");
        var acc =myComponent.get("c.fetchAccountFromGenAccount");
        acc.setCallback(this,function(res){
            console.log("****In callback****");
            myComponent.set("{!v.genAccounts}",res.getReturnValue());
        });
        $A.enqueueAction(acc);
    },
    onChangeHelper : function(genCmp){
        var action= genCmp.get("c.fetchAccount");
        action.setParams({rating:genCmp.find('select').get('v.value')});
        action.setCallback(this,function(response){
            genCmp.set("{!v.genRatedAccounts}",response.getReturnValue());
        })
        $A.enqueueAction(action);
    }
    
})