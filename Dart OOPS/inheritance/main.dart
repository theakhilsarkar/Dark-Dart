import 'classA.dart';
import 'classB.dart';
import 'classC.dart';

void main() {
  // ClassA classA = ClassA();
  // classA.set(a: 10, b: 20);
  // classA.get();

  // ClassB classB = ClassB();
  // classB.printf();

  ClassC classC = ClassC();
  classC
    ..set(a: 10, b: 100)
    ..get()
    ..printf()
    ..b = 20
    ..hello();
}
