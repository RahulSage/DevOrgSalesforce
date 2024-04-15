({
    doFire : function(myComp, myEVent, myHelper) {
        console.log("---- MySecComp doFire()");
        var myEvt = myComp.getEvent("myCmpEvt");
        
        
        myEvt.setParam("guestName", myComp.find('select').get('v.value'));
        myEvt.fire();
    }
})