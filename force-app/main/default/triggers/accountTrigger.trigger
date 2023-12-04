trigger accountTrigger on Account (after update, after insert) {

    if(Trigger.isAfter && Trigger.isUpdate){
        List<Opportunity> opps = new List<Opportunity>();

        for(Account account : Trigger.new){
            Account oldAccount = Trigger.oldMap.get(account.Id);
            if(account.Industry == 'Banking' && oldAccount.Industry != 'Banking'){
                Opportunity newOpps = new Opportunity();
                newOpps.Name = 'New Opp for ' + account.Name;
                newOpps.AccountId = account.Id;
                newOpps.StageName = 'Prospecting';
                newOpps.CloseDate = System.today().addDays(30);
                opps.add(newOpps);
            }
        }   

        insert opps;
    }

    if(Trigger.isAfter && Trigger.isInsert){
        List<Opportunity> opps = new List<Opportunity>();

        for(Account account : Trigger.new){
            if(account.Industry == 'Banking'){
                Opportunity newOpps = new Opportunity();
                newOpps.Name = 'New Opp for ' + account.Name;
                newOpps.AccountId = account.Id;
                newOpps.StageName = 'Prospecting';
                newOpps.CloseDate = System.today().addDays(30);
                opps.add(newOpps);
            }
        }   

        insert opps;
    }
}