class Method
{
    // a normal variable inside a class is a instance variable
    String instancemsg="This is a instance variable";
    // a variable with static keyword can be accessed by class so it's called class variable
    static String classmsg="This is a class variable";
    // instance function
    void instance()
    {
        print("This is a instance function");
    
    }
    // class function
    static void classFunc()
    {
        print("This is a class function");
    }
}

void main()
{
    Method method=new Method();
    print(method.instancemsg);
    print(Method.classmsg);

    method.instance();
    Method.classFunc();
}