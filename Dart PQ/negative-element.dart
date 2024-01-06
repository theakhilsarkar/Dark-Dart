import '../Dart Basics/21_set(4)2_two_class.dart';

void main() {
  List l1 = [-1, 2, 3, 4, -9, 7, -4, -2];

  l1.forEach((element) {
    element >= 0 ? print(element) : print('-');
  });
}
