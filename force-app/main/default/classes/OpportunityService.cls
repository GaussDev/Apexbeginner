public with sharing class OpportunityService {

    public Opportunity createOpportunity(){

        //kada u deug mode pozivas method, prvo pozivas class by instance
        //or public Opportunti< createOpportunity(string stageName, date closeDate, string name() ( in
        //the new line opportunity opp1 = new Opportunity()
        //opp.CloseDate = closeDate; i sve ostalo ya opp creation i return opp na kraju))
        
        AccountService newAccountService = new AccountService();
        Account newAccount = newAccountService.createAccount();
        insert newAccount;

        Opportunity newOpportunity = new Opportunity();
        newOpportunity.Name = 'September_Opp';
        newOpportunity.CloseDate = Date.today().addDays(30);
        newOpportunity.StageName = 'Proposal';
        newOpportunity.AccountId = newAccount.Id;
        insert newOpportunity;
        return newOpportunity;
        
    }
    
    public Decimal calculateAmount(Opportunity opp1, Opportunity opp2){
        Decimal sum = opp1.Amount + opp2.Amount;
        return sum;
    }

    public Opportunity softMerge(Opportunity opp1, Opportunity opp2 ){
        Opportunity thirdOpp = new Opportunity();

        thirdOpp.AccountId = opp1.AccountId;
        thirdOpp.Amount = opp1.Amount;
        thirdOpp.CloseDate = opp1.CloseDate;
        thirdOpp.Name = opp2.Name;
        thirdOpp.Probability = opp2.Probability;
        thirdOpp.StageName = opp2.StageName;
        
        return thirdOpp;

    }
    //all we write in debug mode we can put in the method, so we do not do it manually



    }


    



