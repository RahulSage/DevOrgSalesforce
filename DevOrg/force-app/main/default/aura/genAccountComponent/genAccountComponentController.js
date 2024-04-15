({
    fetchAccountFromController : function(component, event, helper) {
        console.log("****In Controller****")
        helper.fetchAccountFromHelper(component);
    },
    onChange : function(genCmp,genEv,genHelper){
        genHelper.onChangeHelper(genCmp);
    }
    
})