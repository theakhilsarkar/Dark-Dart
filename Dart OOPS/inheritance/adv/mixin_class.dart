// what is mixin class in dart?
// Mixin class is a class that can be used as a base class for other classes
// and its properties and methods can be used by other classes
// main purpose of mixin class is to share properties and methods between multiple classes

// to make code reusable
// to inherit multiple classes in one class
// to share properties and methods between multiple classes
// cant use contructors in mixin class
// cant use inheritance in mixin class
// cant use super keyword in mixin class
// as per memory management mixin class use 

mixin class A{
  void set(int a, int b) {
    print(a);
    print(b);
  }
}

class B with A {
  void get() {
    print("hello");
    set(10, 20);
  }
}

// real life example

void main() {
  B b1 = B();
  b1.set(20, 30);
  b1.get();
}

