public class AccountService {

    public Account createAccount(){
        Account newAccount = new Account();
        newAccount.Name = 'Account DEF';
        newAccount.Industry = 'Banking';
        newAccount.BillingCity = 'Germany';
        return newAccount;
    }

    public Account createAccount(String name, String industry, String billingCity){
        Account account = new Account();
        account.Name = name;
        account.Industry = industry;
        account.BillingCity = billingCity;
        return account;
    }

    public void insertAccount(Account account){
        insert account;
    }

    public Account createAndInsertAccount(){
        
        Account accountToInsert = createAccount();
        insertAccount(accountToInsert);
        return accountToInsert;
    }

    public String getAccountSummary(Account account){
        String name = 'This is account Name '+ account.Name;
        String type = 'This is account Type '+ account.Type;
        String annualRevenue = 'This is annual revenue '+ account.AnnualRevenue;
        String summary = name + type + annualRevenue;
        return summary;
    }

    public Boolean isTestAccount(Account account){
        return account.Name != null && account.Name.toLowerCase().contains('test');
    }

    //New comment: could we use this instead of to.lowerCase().contains() --->return account.Name.contains('test');

    public String printAccountTier(Account account){
        String accountTier = 'VIP Tier';

        if(account.AnnualRevenue <= 0){
            accountTier = 'No Tier';   
        } else if (account.AnnualRevenue < 50000){
            accountTier = 'Silver Tier';
        } else if (account.AnnualRevenue < 300000){
            accountTier = 'Golden Tier';
        } 
        
        System.debug(accountTier);
        return accountTier;
    }

        
    public Map<String, List<Account>> createIndustryMap(List<Account> accs){
        Map<String, List<Account>> mapWithAccounts = new Map<String, List<Account>>();

        for(Account account : accs){
            if(account.Industry = mapWithAccounts.containsKey(accs.Industry)){ 
                mapWithAccounts.put(String a, List<Account>(account));
            } 




            //if the industry is in the list, save it
            //if it is not in the list, save in another list

        //String key ide kroz keys listu, u prvoj iteraciji key = prvi element iz keys liste
        //potom pita da li mapa inputMap sadrzi key varijablu tj da li sadrzi prvi element
        //ako sadrzi, doda ga  listu
        
        //for(String key : keys){
         //   if(inputMap.containsKey(key)){ 
           //     String value = inputMap.get(key);

             //   listToReturn.add(value);
            //}
        //}

            if(String industry = accs.get(industry)){
                mapWithAccounts.put(account, accs)

            }else{


            }     

        }
        return mapWithAccounts;

//for(String key : keys){
//    if(inputMap.containsKey(key)){ 
//      String value = inputMap.get(key);

  //      listToReturn.add(value);
 //   }
}

return listToReturn;


    }








} 