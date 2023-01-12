// 1. WAP to create a class for student to get and print details of N students. (with use of array of objects)

import 'dart:io';

class Student
{
  String? rollNo,name,surname,schoolName;

  void setData()
  {
    print("Enter roll no of student : ");
    rollNo = stdin.readLineSync();

    print("Enter name of student : ");
    name = stdin.readLineSync();

    print("Enter school name of student : ");
    schoolName = stdin.readLineSync();

  }

  void getData()
  {
    print("Roll no        Name        School name");
    print("$rollNo              $name              $schoolName\n\n");
  }
}
void main()
{
  //Student s1 = Student();
  // s1.setData();
  // s1.getData();

  // Array of Object

  List<Student> studentData = [];
  int lengthOfList = 0;

  print("How many times you want to enter student detail : ");
  String? n = stdin.readLineSync()!;
  lengthOfList = int.parse(n);

  for(int i=0; i<lengthOfList; i++)
  {
    Student s1 = Student();
    studentData.add(s1);
  }

  for(int i=0; i<lengthOfList; i++)
  {
    studentData[i].setData();
  }

   for(int i=0; i<lengthOfList; i++)
  {
    studentData[i].getData();
  }
  
  }