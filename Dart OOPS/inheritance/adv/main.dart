void main(){
  // B b1 = B();
  // b1.hello();
  C c1 = C();
  c1.hello();
}

class A{
  void hello(){
    print("Hello");
  }
}

class B extends A{
  void hello(){
    print("Hello Dart");
  }
}

class C with A{
  void hello(){
    print("Hello C");
  }
}

