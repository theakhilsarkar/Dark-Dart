// Write a Dart program to find a user given
// number is even or odd.
import 'dart:io';

void main() {
  int num;

  print("Enter value : ");
  String? a = stdin.readLineSync();

  num = int.parse(a!);

  if (num % 2 == 0) {
    print("Num is even !");
  } else {
    print("Num is odd");
  }
}
