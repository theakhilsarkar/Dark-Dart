class A extends C {
  late int a, b;
  void get() {
    print("Extended Class");
    int a, b;
    (a, b) = set(10, 20);
    this.a = a;
    this.b = b;
    print(this.a);
    print(this.a);
  }

  C() {
    get();
  }
}

class B with C {
  late int a, b;
  void get() {
    print("Mixin Class");
    int a, b;
    (a, b) = set(10, 20);
    this.a = a;
    this.b = b;
    print(this.a);
    print(this.a);
    print(nums);
  }
}

mixin class C {
  int nums = 0;
  (int, int) set(int a, int b) {
    print(this.nums);
    return (a, b);
  }
}

void main() {
  A a1 = A();
  B b1 = B();

  a1.get();
  b1.get();
  b1.nums = 20;
  b1.get();
}
