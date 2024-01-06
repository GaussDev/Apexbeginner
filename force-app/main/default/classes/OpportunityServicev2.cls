public with sharing class OpportunityServicev2 {
    
    public List<Opportunity> createOpportunities(Integer n){
        List<Opportunity> newOppList = new List<Opportunity>();

        //if n= 5, create 5 opportunities
        //you need a shell for 1 opp than x n

        for(Integer i=1; i <= n; i++){
            Opportunity opp = new Opportunity();
            opp.StageName = 'Prospecting';
            opp.Amount = 10000.00;
            opp.CloseDate = Date.today().addDays(30);
            insert opp;
            newOppList.add(opp);

        }
        return newOppList;
    }

    public Double calculateTotalRevenue(List<Opportunity> opps){
        Double amountOfAllOpps = 0;

        for(Opportunity opp : opps){
            amountofAllOpps += opp.Amount;
        }
        return amountOfAllOpps;

    }


    public List<Opportunity> filterOpportunitiesByStage(List<Opportunity> opportunities, String stageName){

        List<Opportunity> newListOpp = new List<Opportunity>();

        for(Opportunity opp : opportunities){
            if(opp.StageName == stageName){
                newListOpp.add(opp);
            }
        }
        return newListOpp;
    }

    





    
}