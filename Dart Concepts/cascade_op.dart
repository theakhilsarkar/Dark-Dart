
void main() {
  Demo d1 = Demo();
  d1.hello(i: 1);
  d1.welcome();
  d1.how();

  d1
    ..hello(i: 10)
    ..how()
    ..welcome()
    ..a = 10
    ..printf();
}

class Demo {
  late int a, b;
  void hello({required int i}) {
    print("Hello Dart $i");
  }

  void welcome() {
    print("welcome dart");
  }

  void how() {
    print("how are you !");
  }

  void printf() {
    print(a + b);
  }
}
