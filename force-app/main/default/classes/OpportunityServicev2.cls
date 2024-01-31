public with sharing class OpportunityServicev2 {
    
    public List<Opportunity> createOpportunities(Integer n){
        List<Opportunity> newOppList = new List<Opportunity>();

        //if n= 5, create 5 opportunities
        //you need a shell for 1 opp than x n

        for(Integer i = 1; i <= n; i++){
            Opportunity opp = new Opportunity();
            opp.StageName = getRandomStageName();
            opp.Amount = getRandomNumberInRange(0, 1000000);
            opp.CloseDate = Date.today().addDays(30);
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

    public Integer getRandomNumberFrom1To100() {
        return (Integer) (Math.random() * 100);
    }

    public Integer getRandomNumberInRange(Integer n, Integer m) {
        return n + (Integer)(Math.random() * ((m - n) + 1));
    }

    public String getRandomStageName() {
        List<String> stageNames = new List<String>{
            'Prospecting', 
            'Qualification', 
            'Needs Analysis', 
            'Value Proposition', 
            'Closed Won', 
            'Closed Lost'
        };

        Integer randomIndex = getRandomNumberInRange(0, stageNames.size() - 1);
        return stageNames.get(randomIndex);
    }







    
}