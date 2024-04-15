({
	doSearch : function(barComponent, barEvent, barHelper) {
		console.log('***** In List Bar Cmp ctrl *****');
        var selRating= barComponent.get("v.selRating");
        console.log(selRating);
         var genAppEvt = $A.get("e.c:ratingSearchEvent");
        genAppEvt.setParam("selRating", selRating);
        genAppEvt.fire();
	}
})