class ClassA {
  late int _a, b = 10;

  void set({required int a, required int b}) {
    _a = a;
    this.b = b;
  }
  
  void get() {
    print("a + b = ${_a + b}");
  }
}
