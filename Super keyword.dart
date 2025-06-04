// Defining the parent class
class SuperGeek {
    
    // Method in the parent class
    void printInfo() {
        print("Welcome !\nYou are inside the parent class.");
    }
}

// Defining the child class that
// inherits from SuperGeek
class SubGeek extends SuperGeek {
    // Method in the parent class
    void printInfo() {
        print("Welcome\nYou are inside the child class.");
    }
    // Method in the child class
    void info() {
        print("You are calling a method of the parent class.");
        
        // Calling the parent class
        // method using 'super'
        super.printInfo(); //prevents overloading of methods
    }
}

void main() {
    
    // Creating an instance of the child class
    SubGeek geek = SubGeek();
    
    // Calling the method in the child class
    // that invokes the parent class method
    geek.info();
}