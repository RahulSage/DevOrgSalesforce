trigger ClosedOpportunityTrigger on Opportunity (after insert, after update)

{

    List<Task> tasks = new List<Task>();

    for (Opportunity Opp : Trigger.new)

    {

        if(Opp.StageName == 'Closed Won')

        {

        Task tsk = new Task(whatID = Opp.ID, subject='Follow Up Test Task');

        tasks.add(tsk);

        }

    }
    insert tasks;

}