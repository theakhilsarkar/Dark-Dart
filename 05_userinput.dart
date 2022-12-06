// Write a Dart program to perform multiplication of
// two user given numbers.
import 'dart:io';

void main() {
  int num1;
  int num2;

  print("Enter value of a nad b : ");
  String? a = stdin.readLineSync();
  String? b = stdin.readLineSync();

  num1 = int.parse(a!);
  num2 = int.parse(b!);
  print("Multiplication is : ${num1 * num2}");
}
