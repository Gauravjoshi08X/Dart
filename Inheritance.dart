// Single Inheritance
class Parent {
    String value1;
    String value2;

    Parent(this.value1, this.value2);
}

// Multilevel Inheritance
class Child extends Parent {
    String value3;
    Child(String value1, String value2, this.value3) : super(value1, value2);
}

class GrandChild extends Child {
    String value4;
    GrandChild(String value1, String value2, String value3, this.value4)
            : super(value1, value2, value3);
}

// Hierarchical Inheritance: Multiple classes inherit from Parent
class Sibling extends Parent {
    String value3;
    Sibling(String value1, String value2, this.value3) : super(value1, value2);
}

void main() {
    // Single Inheritance
    Child child = Child("parent1", "parent2", "child3");
    print(child.value1); // parent1
    print(child.value3); // child3

    // Multilevel Inheritance
    GrandChild grandChild = GrandChild("parent1", "parent2", "child3", "grandchild4");
    print(grandChild.value1); // parent1
    print(grandChild.value4); // grandchild4

    // Hierarchical Inheritance
    Sibling sibling = Sibling("parent1", "parent2", "sibling3");
    print(sibling.value1); // parent1
    print(sibling.value3); // sibling3
}
