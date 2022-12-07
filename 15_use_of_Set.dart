/*
  Write a dart program to print all unique element from list.

  Element may be redudant while entering into a List. User can enter only 
  element of String datatype.
*/

import 'dart:io';

void main()
{
  List <String>l1 = [];
  List <String>l2 = [];
  Set s1 = {};
  Set s2 = {};

  for(int i=1; i<=5; i++)
  {
    print("Enter list 1 element ${i} : ");
    String? s = stdin.readLineSync();
    l1.add("${s}");
  }

  print("\n");

  for(int i=1; i<=5; i++)
  {
    print("Enter list 2 element ${i} : ");
    String? s = stdin.readLineSync();
    l2.add("${s}");
  }
  
  for(int i=0; i<5; i++)
  {
    s1.add("${l1[i]}");
    s2.add("${l2[i]}");
  }

  print("\n");
  
  print(s1.intersection(s2));



}