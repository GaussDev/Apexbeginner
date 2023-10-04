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


}