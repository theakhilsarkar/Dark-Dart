// Write a Dart program to create a list which
// contains all Indian states.
// Add all indian states in list by user input.
// After that print all states using any type of loop.

import 'dart:io';

import '../Dart Basics/21_set(4)2_two_class.dart';

void main() {
  // List<String> states = [];
  // int n;

  // stdout.write("Enter number of states : ");
  // n = int.parse(stdin.readLineSync()!);

  // for (int i = 0; i < n; i++) {
  //   stdout.write("Enter states name : ");
  //   states.add(stdin.readLineSync()!);
  // }

  List states = ["Gujrat", "Rajsthan", "Punjab"];

  // for each
  states.forEach(
    (element) => print(element),
  );

  // for in loop
  for (String i in states) print(i);
}
