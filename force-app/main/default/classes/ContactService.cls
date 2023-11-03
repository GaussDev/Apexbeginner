public with sharing class ContactService {

    
    public Contact createContact(Id accountid, String title, String department, String firstName, String lastName){
        
        Contact newContact = new Contact();
        newContact.AccountId = accountId;
        newContact.FirstName = firstName;
        newContact.LastName = lastName;
        newContact.Title = title;
        return newContact;
    }

    public void insertContactWithAccount(){
        AccountService account_a = new AccountService();
        Account account_b = account_a.createAccount();
        insert account_b;

        //this method is inside the same calss, no dot notation nedded, call method directly

        Contact contact = createContact(account_b.Id, 'SuperTalent', 'Marketing', 'Melissa', 'Milano');
        insert contact;

    }







    public void updateContactsPhoneByAccount(Id accountId, String newPhoneNumber){

        List<Contact> contacts = [
            SELECT Id, LastName, Phone
            FROM Contact 
            WHERE AccountId = :accountId
        ];

        for(Contact contact : contacts) {
            contact.Phone = newPhoneNumber;
        }    
        update contacts;

    }   



}