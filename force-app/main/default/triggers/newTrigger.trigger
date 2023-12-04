trigger newTrigger on Opportunity (after update) {
    // Trigger.new -> List of all recorrds that fired the trigger
    //line 3 needed bc of the line 1 after update
    if(Trigger.IsAfter && Trigger.isUpdate) {
        List<Task> tasks = new List<Task>();

        for(Opportunity opportunity: Trigger.new) {
            if(opportunity.StageName == 'Closed Lost'){
                Task newTask = new Task();
                newTask.WhatId = opportunity.AccountId;
                newTask.Subject = 'Follow-Up Task';
                
                tasks.add(newTask);
            }
        }

        insert tasks;
    }



}