public class Company {
    public String name;
    public Employee CEO;
    public Department salesDepartment;
    public Department developmentDepartment;
    public Department humanResourcesDepartment;

    
    public Company(String name, Employee CEO, Department info ){
        this.name = name;
        this.CEO = CEO;
        this.salesDepartment = info;
    
    }

    public String getCEOInfo(){
        return CEO.getFullName();
    }

    public String getDepartmentInfo(){
        return this.name +' '+ this.CEO;
    }
    
    //I do not know how to finish this part
    public String getCompanyDetails(){
        String p1 = 'Company '+ this.name;
        String p2 = 'CEO '+ this.CEO;
        String p3 = 'Department '   ;
        String p4 = 'Manager '   ;
        String p5 = ''   ;

        return p1 +' '+ p2 +' '+ p3 +' '+ p4 +' '+ p5;
            
    }

}