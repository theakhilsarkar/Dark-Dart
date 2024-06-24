// tip :

// class : user define datatype, blueprint for creating object, class is a collection
// of methods and attributes.

// primetive datatypes : int,float,double,bool
// not-premetive datatypes : array,List,Map,Set,String - class

// int : numeric
// float :

import 'dart:io';

void main() {
  // wap to get 5 employe's information and print all information at once time using user define datatype.

  // id,name,salary,designation 

  // ? <- nullable operator : use when we declared ant variable or object. : value can be null
  // ! <- null aware operator : we are give surity, value will come.

  // int? id, std;
  // double? percentage;
  // String? name; // create all varable saperately for all students.

  // user define datatype where you can store these all values in single variable.

  // Student deep; delcaration
  // Student deep = Student(); // to create complete object
  // Student kashish = Student(); // to create complete object
  // Student rishi = Student(); // to create complete object
  // Student priyam = Student(); // to create complete object
  // Student avesh = Student(); // to create complete object

  List<Student> student = [];
  // array of object

  for (int i = 0; i < 5; i++) {
    Student s1 = Student(); //s1 object create
    student.add(s1); // s1 add in List
    // s1 destroy
  }

  for (int i = 0; i < 5; i++) {
    stdout.write("Enter your id : ");
    student[i].id = int.parse(stdin.readLineSync()!);

    stdout.write("Enter your name : ");
    student[i].name = stdin.readLineSync()!;

    stdout.write("Enter your std : ");
    student[i].std = int.parse(stdin.readLineSync()!);

    stdout.write("Enter your percentage : ");
    student[i].percentage = double.parse(stdin.readLineSync()!);
    print("");
  }

  for (int i = 0; i < 5; i++) {
    print(
        "\n${student[i].id} ${student[i].name} ${student[i].std} ${student[i].percentage}");
  }
}

class Student {
  int? id, std;
  double? percentage;
  String? name;
}

// 