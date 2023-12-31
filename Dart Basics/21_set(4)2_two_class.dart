// 2. WAP to create a class which Read and print Class, Student details using Two Classes.
//  (Make two classes, create one classe's obj in another class.)


import 'dart:io';

class Read
{
  String? name,rollNo,div,result;
  
  Read()
  {
    print("Enter student roll number : ");
    rollNo = stdin.readLineSync();
    print("Enter student name : ");
    name = stdin.readLineSync();
    print("Enter student division : ");
    div = stdin.readLineSync();
    print("Enter student result pass/fail : ");
    result = stdin.readLineSync();
  }
}

class Print
{
  Read r1 = Read();
  Print()
  {
    print("\n****************************************************************\n");
    print("Student roll no    : ${r1.rollNo}");
    print("Student name       : ${r1.name}");
    print("Student div        : ${r1.div}");
    print("Student result     : ${r1.result}");
  }
}

void main()
{
  // Print p1 = Print();  
}