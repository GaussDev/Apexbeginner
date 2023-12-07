public class NewAccountService {

    //homework: If/else

    public String getAccountSummary(Account account){
        String name = 'This is Account Name ' + account.Name;
        String type = 'This is Account Type ' + account.Type;
        String rev = 'This is annual Revenue ' + account.AnnualRevenue;
        String summ = name + type + rev;
        return summ;
    }


    public Boolean isTestAccount(Account account){
        return account.Name.contains('test');
    } 
    
    public String printAccountTier(Account account){
        Decimal revenue = account.AnnualRevenue;
        String tier;

        if(revenue <= 0){
            System.debug('No Tier');
        }else if(revenue < 50000){
            tier = 'Silver Tier';
        }else if(revenue >= 50000 && revenue < 300000){
            tier = 'Golden Tier';
        }else{
            tier = 'VIP Tier';
        }

        System.debug(tier);
        return tier;
    }   

    //end of Homework: if/else
}