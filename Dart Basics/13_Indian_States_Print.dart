// Write a Dart program to create a list which
// contains all Indian states.
// Add all indian states in list by user input.
// After that print all states using any type of loop.

import 'dart:io';

void main()
{
  List l1 = [];
  print("Enter how many states you want to enter : ");
  int n;
  String? x = stdin.readLineSync();
  n = int.parse(x!);

  for(int i=0; i<=n; i++)
  {
    String? s = stdin.readLineSync();
    l1.add(s);
  }

  for(int i=0; i<=n; i++)
  {
    print(l1[i]);
  }
}