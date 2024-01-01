
// Writ a Dart Program to get and print total three
// employee information using user input and use
// Map datatype(use MapEntry class)

// Take low mntion attriuts for on employee
// id
// name
// age
// salary

// import 'dart:io';
// void main()
// {

//   for(int i=1; i<=3; i++)
//   {
//     if(i==1)
//     {
//       print("Enter detail of Employee 1 --->");
//       print("\n");
//     }
//     else if(i==2)
//     {
//       print("Enter detail of Employee 2 --->");
//       print("\n\n");
//     }
//     else
//     {
//       print("Enter detail of Employee 3 --->");
//       print("\n\n");
//     }

//       print("Enter employee id     : ");
//       String? id = stdin.readLineSync();

//       print("Enter employee name   : ");
//       String? name = stdin.readLineSync();

//       print("Enter employee age    : ");
//       String? age = stdin.readLineSync();

//       print("Enter employee salary : ");
//       String? salary = stdin.readLineSync();

//       print("\n");
//       Map m1 = {"Id":"${id}","Name":"${name}","Age":"${age}","Salary":"${salary}"};
//       print(m1);
//       print("\n");

//   }

// }

import 'dart:io';

void main()
{
  List l1 = [];
  List l2 = [];
  List l3 = [];
  List l4 = [];
  Map  m1 = {};
  dynamic s1;

  for(int i=0; i<=2; i++)
  {
    
    print("Enter id   of employee : ");
    s1 = stdin.readLineSync();
    l1.add(s1);

    print("Enter name of employee : ");
    s1 = stdin.readLineSync();
    l2.add(s1);

    print("Enter age of employee  : ");
    s1 = stdin.readLineSync();
    l3.add(s1);

    print("Enter salary of employee : ");
    s1 = stdin.readLineSync();
    l4.add(s1);

    print("\n");

  }

  for(int i=0; i<=2; i++)
  {
    m1["Id"] = l1[i];
    m1["Name"] = l2[i];
    m1["Age"] = l3[i];
    m1["Salary"] = l4[i];
    print(m1);
  }
  
}
