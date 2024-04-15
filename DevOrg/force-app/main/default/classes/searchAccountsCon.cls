public with sharing class searchAccountsCon {
    Public Integer accCount   { get; set; }
    Public String selRating  { get; set; }
    Public List<Account> myAccounts { get; set; }
    
    Public void doSearch()
    {
        System.debug('Do search start');
        myAccounts = [select Id, Name, Rating, Website, Industry,AccountNumber from Account where Rating =: selRating LIMIT 200];
        accCount = myAccounts.size();
    }
}