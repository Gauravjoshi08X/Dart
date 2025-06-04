// No return no argument
void displayMessage()
{
    print("This is a no return no arg function");
}

// No return with argument
void displayData(String data)
{
    print("My name is $data");
}

// Return with no argument
bool sendStatus()
{
    bool status=false;
    return status;
}

// Return with argument
bool transportStatus(bool state)
{
    bool status=state;
    return status;

    // or return state;
}

void main()
{
    // Anonymous function in Dart
    var calculate = (int a, int b) { return a * b; }; // return type can be inferred by Dart

    print(calculate(3,4));

    displayMessage();
    displayData("Gaurav Joshi");
    print(sendStatus());
    print(transportStatus(true));
}