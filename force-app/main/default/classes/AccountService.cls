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

    



}