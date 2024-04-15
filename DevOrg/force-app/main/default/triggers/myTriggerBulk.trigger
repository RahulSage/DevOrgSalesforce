trigger myTriggerBulk on Account (before INSERT,before UPDATE) {

 for(Account a : Trigger.New) {
        if(a.Rating=='Cold')
        {
        a.Website='www.cold&cough.com';
        }
        
        if(a.Rating=='Hot')
        {
          a.Rating.addError('Mind ur rating');
        }
    }

}