public class Employee {
    public String firstName;
    public String lastName;
    public Decimal salary;
    public Integer yearsOfService;

    
    
    public Employee(String firstName, String lastName, Decimal salary, Integer yearsOfService){
        this.firstName =  firstName;
        this.lastName = lastName;
        this.salary = salary;
        this.yearsOfService = yearsOfService;
    }

    public Employee(String firstName, String lastName, Decimal salary){
        this.firstName =  firstName;
        this.lastName = lastName;
        this.salary = salary;
        this.yearsOfService = 3;
    }

    public Employee(String firstName, String lastName){
        this.firstName =  firstName;
        this.lastName = lastName;
        this.salary = 1000.50;
        this.yearsOfService = 5;
    }

    public Employee(){
        this.firstName =  'Alex';
        this.lastName = 'Letro';
        this.salary = 2000.55;
        this.yearsOfService = 10;
    }

    public String getFullName(){
        return this.firstName + ' ' + this.lastName;
    }

    public Decimal calculateBonus(){
        return this.salary * 0.10 * this.yearsOfService;
    }
    
    public void increaseSalary(Integer increase){
        this.salary = this.salary + increase;
        // this.salary += increase;
    }

}