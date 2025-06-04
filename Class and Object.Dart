// Class and Object in Dart are similar as in C++. We can think of a Class as a Template and Object as an entity of properties defined inside that class.
// OOP is used mainly for reducing code redundancy and improve code readability.
// It is done by defining all the properties within a class and making as much objects of that class as needed.

// Object name should be Capitalized.
class Form
{
    // class variable
    final classMember="Class Variable";
    var parent="Form";

    // class methods
    void displayVar()
    {
        print("$classMember\n$parent");
    }
}

void main()
{
    Form obj=Form();
    print(obj.parent);
    print(obj.classMember);
   
    obj.displayVar();
}