// Write a Dart program to find a cube of any
// number.
import 'dart:io';

void main() {
  int num;

  print("Enter value : ");
  String? a = stdin.readLineSync();

  num = int.parse(a!);

  print("Cube is ${num * num * num}");
}
