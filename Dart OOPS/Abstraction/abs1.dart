void main(){
  B b1 = B();
  b1.set(10, 20);
  b1.get();
}

abstract class A{
  int a = 10;
  int b = 20;
  void set(int a, int b);
}

class B extends A{
  @override
  void set(int a, int b) {
    this.a = a;
    this.b = b;
  }

  void get(){
    print("a + b = ${a + b}");
  }
}