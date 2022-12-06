// Write a Dart program to find a Simple
// Interest.

import 'dart:io';

void main() {
  int num;

  print("Enter value : ");
  String? a = stdin.readLineSync();

  num = int.parse(a!);
  double interest = (num * 8) / 100;

  print("Interest of $num is : $interest");
}
