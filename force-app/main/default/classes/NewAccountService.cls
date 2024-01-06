public class NewAccountService {

    //homework: If/else

    public String getAccountSummary(Account account){
        String name = 'This is Account Name ' + account.Name;
        String type = 'This is Account Type ' + account.Type;
        String rev = 'This is annual Revenue ' + account.AnnualRevenue;

        return name + type + rev;
    }

    // account.Name -> null -> null.contains('test') -> Exception
    // ''.contains('test') -> false
    public Boolean isTestAccount(Account account){
        return account.Name != null && account.Name.toLowerCase().contains('test');
    } 
    
    public String printAccountTier(Account account){
        Decimal revenue = account.AnnualRevenue;
        String tier = 'VIP Tier';

        if(revenue <= 0){
            tier = 'No Tier';
        } else if(revenue < 50000){
            tier = 'Silver Tier';
        } else if(revenue < 300000){
            tier = 'Golden Tier';
        } 

        System.debug(tier);
        return tier;
    }   

    //end of Homework: if/else
}