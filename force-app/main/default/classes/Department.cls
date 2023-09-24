public class Department {
    public String name;
    public Integer budget;
    public Employee manager;
    public Employee supervisor;
    public Employee contactPerson;

    public String getDepartmentInfo(){
        return 'The manager of the dep is: ' + manager.getFullName();
    }

    public Decimal getSalaryExpenses(){
        return manager.salary + supervisor.salary + contactPerson.salary;
    }

    public Decimal getBudgetDifference(){
        return this.budget - this.getSalaryExpenses();
    }

}