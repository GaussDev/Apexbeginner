public with sharing class SoqlPractice {
//1. Returns id, name, revenue and account of all opportunities with an amount greater than 50,000.
//2. Returns the name of all opportunities that have a stage of "Closed Won" and their associated account name.
//3. Counts the number of distinct opportunity owners in the system.
//4. Returns the maximum amount for all opportunities in the system.
//5. Returns the average amount for all opportunities with a stage of "Closed Won".

    //SELECT Id, Name, ExpectedRevenue, Account.Name
    //FROM Opportunity
    //WHERE Amount > 50000

    //SELECT Name, StageName, Account.Name
    //FROM Opportunity
    //WHERE StageName = 'Closed Won'

    //SELECT COUNT_DISTINCT(Owner.Name)
    //FROM Opportunity

    //this code has error:
    //SELECT MAX(Amount) 
    //FROM Opportunity

    //SELECT AVG(Amount)
    //FROM Opportunity
    //WHERE StageName = 'Closed Won'

    
}