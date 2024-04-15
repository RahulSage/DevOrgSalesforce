({
    doHandle : function(myComp, myEvent, myHelper) {
        console.log("------- Tower8cmp doHandler()");
        var gName = myEvent.getParam("guestName");
        console.log("---- Rating name is ==> "+gName);
    }
})