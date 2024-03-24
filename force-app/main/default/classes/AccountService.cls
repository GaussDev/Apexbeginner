public class AccountService extends SObjectService{

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

    //example List (Acc1, Acc2, Acc3). String is Industry like Banking, Tourism, IT. Every Account has industry
    // loop through list of Acc with new variable and store Industry and store the Account


    public Map<String, List<Account>> createIndustryMap(List<Account> accs) {

        Map<String, List<Account>> newAccMap = new Map<String, List<Account>>();

        for(Account acc : accs){
            //da li se prvi account iz liste accs nalazi u mapi - ako NE, spasi ga i mapiraj sa acc.Industry
            //ako DA, provjeri da li je vec u mapi, ako nije dodaj ga na listu

            if(newAccMap.containsKey(acc.Industry)){
                newAccMap.put(acc.Industry, newAccMap.get(acc.Industry));
            }else{
                String newIndustry = acc.Industry;
                List<Account> newAccount = new List<Account>();
                newAccount.add(acc);
                newAccMap.put(newIndustry, newAccount);
            }
        }


        return newAccMap;
    }



}