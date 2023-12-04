trigger ContactTrigger on Contact (after insert, after update, after delete, after undelete) {

    // Calculate the number of contacts for each account
    // Insert, delete, (undelete)

    // Insert -> List of contacts
    // 1. Update counter on the corresponding account

    if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUndelete)) {
        Set<Id> accountIds = new Set<Id>();
        for(Contact contact : Trigger.new) {
            if(contact.AccountId != null) {
                accountIds.add(contact.AccountId);
            }
        }

        Map<Id, Account> accountIdToAccount = new Map<Id, Account>([
            SELECT Id, NumberOfContacts__c 
            FROM Account 
            WHERE Id IN :accountIds
        ]);

        List<Account> accountsToUpdate = new List<Account>();

        // Contact Alex -> Deutsche Bahn (AccountId = 0010Y00000Bw8ZVQAZ)
        // Account (Name, NumberOfContacts__c = 3, Id = 0010Y00000Bw8ZVQAZ, Status__c = 'Active')
        for(Contact contact : Trigger.new) {
            if(contact.AccountId != null) {
                Account account = accountIdToAccount.get(contact.AccountId);
                if(account.NumberOfContacts__c == null) {
                    account.NumberOfContacts__c = 0;
                }
                account.NumberOfContacts__c = account.NumberOfContacts__c + 1;
                accountsToUpdate.add(account);
            }
        }

        update accountsToUpdate;
    }

    if(Trigger.isAfter && Trigger.isDelete) {
        Set<Id> accountIds = new Set<Id>();
        for(Contact contact : Trigger.old) {
            if(contact.AccountId != null) {
                accountIds.add(contact.AccountId);
            }
        }

        Map<Id, Account> accountIdToAccount = new Map<Id, Account>([
            SELECT Id, NumberOfContacts__c 
            FROM Account 
            WHERE Id IN :accountIds
        ]);

        List<Account> accountsToUpdate = new List<Account>();

        for(Contact contact : Trigger.old) {
            if(contact.AccountId != null) {
                Account account = accountIdToAccount.get(contact.AccountId);
                 if(account.NumberOfContacts__c == null) {
                    account.NumberOfContacts__c = 0;
                }

                // null + 1 -> Exception
                account.NumberOfContacts__c = account.NumberOfContacts__c - 1;
                accountsToUpdate.add(account);
            }
        }

        update accountsToUpdate;
    }

/*
    Set<ID> listOfIds = new Set<ID>();
     
    if(Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete){

        for(Contact contact : Trigger.new){
            if(contact.AccountId != null){
                listOfIds.add(contact.AccountId);
            }   
        }
        
    }

    if(Trigger.isDelete){

        for(Contact contact : Trigger.old){
            listOfIds.add(contact.AccountId);
        }
    }


    List<Account> accountRollUpCount = new List<Account>();

    for(AggregateResult aggresult : [SELECT AccountId listOfIds, COUNT(Id) 
                                     FROM Contact 
                                     WHERE AccountId IN: listOfIds 
                                     GROUP BY AccountId]){
                        Account newAccount = new Account();
                        newAccount.Id = (Id) aggresult.get('AccId');
                        newAccount.NumberOfContacts__c = (Integer) aggresult.get('ContactCount');
                        accountRollUpCount.add(newAccount);
                        }
*/
} 