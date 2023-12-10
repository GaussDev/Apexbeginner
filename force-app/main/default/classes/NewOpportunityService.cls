public with sharing class NewOpportunityService {

    public Decimal calculateAmount(Opportunity opportunity1, Opportunity opportunity2) {
        return opportunity1.Amount + opportunity2.Amount;
    }
    
    public Opportunity softMerge(Opportunity opportunity1, Opportunity opportunity2) {
        Opportunity mergedOpportunity = new Opportunity();
    
        mergedOpportunity.AccountId = opportunity1.AccountId;
        mergedOpportunity.Amount = opportunity1.Amount;
        mergedOpportunity.CloseDate = opportunity1.CloseDate;
    
        mergedOpportunity.Name = opportunity2.Name;
        mergedOpportunity.Probability = opportunity2.Probability;
        mergedOpportunity.StageName = opportunity2.StageName;
    
        return mergedOpportunity;
    }
    
    public Opportunity createOpportunityWithAccount(Account acc) {
        Opportunity newOpportunity = new Opportunity();
            
        newOpportunity.AccountId = acc.Id;
        newOpportunity.Amount = 10000; 
        newOpportunity.CloseDate = System.today().addDays(30); 
        newOpportunity.Name = acc.Name + ' Opportunity'; 
        newOpportunity.Probability = 50;
        newOpportunity.StageName = 'Prospecting';
    
        return newOpportunity;
    }

    public Boolean isOpen(Opportunity opportunity){
        return !(opportunity.StageName == 'Closed Lost' || opportunity.StageName == 'Closed Won');
    }


    public Decimal calculateProbability(Opportunity object1, Opportunity object2){
        return (object1.Probability + object2.Probability)/2;

    }

    public String getOpportunityDetails(Opportunity opportunitiy){
        
        String name = 'Name '+ opportunity.Name;
        String amount = 'Amount ' + opportunity.Amount;
        String stgName = 'Stage ' + opportunity.StageName;
        String oppDetails = name + amount + stgName;
        return oppDetails;

    }

    public void doubleAmount(Opportunity opportunity){
        opportunity.Amount *= 2;
    }  

    //new Comment: to create opportunity all these input variables are important
    public Opportunity createNewOpportunity(String name, String stageName, Date closeDate, Decimal amount, Id accountId){
        Opportunity opportunity = new Opportunity();

        if(name == null){
            name = 'Test Account';
        }
        if(stageName == null){
            stageName = 'Prospecting';
        }
        if(closeDate == null){
            closeDate = Date.today().addDays(30);
        } 
        if(amount == null){
            amount = 10000.00;
        } 
        
            opportunity.Name = name;
            opportunity.StageName = stageName;
            opportunity.CloseDate = closeDate;
            opportunity.Amount = amount;
            opportunity.AccountId = accountId;
         
    return opportunity;
    }
    
}



