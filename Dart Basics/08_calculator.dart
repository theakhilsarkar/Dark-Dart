// Write a Dart program to create a calculator using
// switch case.

import 'dart:io';

void main() {
  int num1;
  int num2;

  print("Enter value of a nad b : ");
  String? a = stdin.readLineSync();
  String? b = stdin.readLineSync();

  num1 = int.parse(a!);
  num2 = int.parse(b!);

  print("Enter 1 for addition");
  print("Enter 2 for substraction");
  print("Enter 3 for multiplication");
  print("Enter 4 for division");
  print("Enter 5 for Module");

  int choice;

  String? x = stdin.readLineSync();
  choice = int.parse(x!);

  switch (choice) {
    case 1:
      print("Addition is ${num1 + num2}");
      break;

    case 2:
      print("Substraction is ${num1 - num2}");
      break;

    case 3:
      print("Multiplication is ${num1 * num2}");
      break;

    case 4:
      print("Division is ${num1 / num2}");
      break;

    case 5:
      print("Modul is ${num1 % num2}");
      break;

    default:
      print("Enter valid number !!");
  }
}
