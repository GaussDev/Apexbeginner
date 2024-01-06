public with sharing class OpportunityQueries {

    public List<Opportunity> queryOpportunitiesByStage(String stage){

        List <Opportunity> newOppsList = [
            SELECT Id, Name
            FROM Opportunity
            WHERE StageName = : stage
        ];

        return  newOppsList;

    }

    public List<Opportunity> queryOpportunitiesByAmountAndStage(Integer amount, String stage){

        return [SELECT Id, Name FROM Opportunity WHERE (Amount = :amount) AND (StageName = : stage)];

    }

    public List<Opportunity> queryOpportunitiesByCreatedDate(Date startDate, Date endDate){

        return [SELECT Id, Name FROM Opportunity WHERE (CreatedDate >= : startDate) AND (CreatedDate <= : endDate)];

    }

    public List<Opportunity> queryOpportunitiesByAmount(Integer amount){

        return [SELECT Id, Name FROM Opportunity WHERE Amount >= : amount];

    }

    public List<Opportunity> queryOpportunitiesByCloseDate(Date closeDate){
        return [SELECT Id, Name FROM Opportunity WHERE CloseDate = : closeDate];

    }

    public void changeProbabiltyBasedOnAmount(Integer amount){
        List<Opportunity> newList =  [SELECT Id, Name, Probability, Amount FROM Opportunity WHERE Amount <: amount];

        for(Opportunity opp : newList){
            opp.Probability *= 0.50;
        }

        update newList;
    }
    
}