
// Writ a Dart Program to get and print total three
// employee information using user input and use
// Map datatype(use MapEntry class)

// Take low mntion attriuts for on employee
// id
// name
// age
// salary

import 'dart:io';
void main()
{

  for(int i=1; i<=3; i++)
  {
    if(i==1)
    {
      print("Enter detail of Employee 1 --->");
      print("\n");
    }
    else if(i==2)
    {
      print("Enter detail of Employee 2 --->");
      print("\n\n");
    }
    else
    {
      print("Enter detail of Employee 3 --->");
      print("\n\n");
    }

      print("Enter employee id     : ");
      String? id = stdin.readLineSync();

      print("Enter employee name   : ");
      String? name = stdin.readLineSync();

      print("Enter employee age    : ");
      String? age = stdin.readLineSync();

      print("Enter employee salary : ");
      String? salary = stdin.readLineSync();

      print("\n");
      Map m1 = {"Id":"${id}","Name":"${name}","Age":"${age}","Salary":"${salary}"};
      print(m1);
      print("\n");


  }
  

  

  
  


}