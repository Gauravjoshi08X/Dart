// Constructor is a method which automatically executes when object is made. It is used to initialize data.


class Employee
{
    String? name;         // public
    int? _id;             // private (by convention, using underscore)
    bool? _scholarshipState;

    // Default Constructor
    Employee()
    {
        name="Name";
        _id=22;
        _scholarshipState=true;
    }
    // Parameterized constructor with named constructor to make multiple constructor of same class.
    Employee.two(String name, int id, bool scholarshipState)
    {
        this.name=name;
        this._id=id;
        this._scholarshipState=scholarshipState;
    }
}

void main()
{
    Employee emp1=Employee();
    Employee emp2=Employee.two("Gaurav Joshi", 32, true);
    print(emp1.name);
    print(emp2.name);
}