class Parent
{
    void method()
    {
        print("This is a parent method");
    }
}

class Child extends Parent
{
    @override
    void method()  // Method overriding in OOP means to replace super method(data member inside Superclass). To prevent it we use super.parentMethod();
    {
        print("This is a child method");
    }
}

void main()
{
    Child obj=Child();
    obj.method();
}