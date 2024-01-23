import 'classB.dart';

class ClassC extends ClassB {
  void hello() {
    print(b);
  }

  @override
  void printf() {
    super.b = 1000;
    super.get();
    print("overridden method $b");
  }
}
