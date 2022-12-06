// 1. Write a Dart program to concate list element
// value with hello.
// For exmple,
// input: [1, 2, 3]
// output: [1 hello, 2 hello, 3 hello]

import 'dart:io';

void main() {
  List l1 = [];
  List l2 = ["Hello"];

  int a;
  print("Enter element of List : ");
  for (int i = 0; i <= 2; i++) {
    String? x = stdin.readLineSync();
    a = int.parse(x!);
    l1.add(a);
  }

  for(int i=0; i<=2; i++)
  {
    print("${l1[i]} ${l2[0]}");
  }
}
