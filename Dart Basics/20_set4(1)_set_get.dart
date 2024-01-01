// 1. WAP to create a class Employee with setter and getter. Which have fields like 
// id, name, role, salary, experience, address, email and contact. Get 5 records.
//
//
import 'dart:io';

class Employee
{
  String? _id,_name,_role,_salary,_exp,_add,_email,_contact;

  void set()
  {
    print("Enter user id              : ");
    _id = stdin.readLineSync();
    print("Enter your name            : ");
    _name = stdin.readLineSync();
    print("Enter your role in Company : ");
    _role = stdin.readLineSync();
    print("Enter your salary          : ");
    _salary = stdin.readLineSync();
    print("Enter your experieance     : ");
    _exp = stdin.readLineSync();
    print("Enter your address         : ");
    _add = stdin.readLineSync();
    print("Enter your email address   : ");
    _email = stdin.readLineSync();
    print("Enter your contact         : ");
    _contact = stdin.readLineSync();

  }

  //
  void get()
  {
    print("\n******************************************************************************\n\n");
    print("ID         : ${_id}");
    print("Name       : ${_name}");
    print("Role       : ${_role}");
    print("Salary     : ${_salary}");
    print("Experiance : ${_exp}");
    print("Address    : ${_add}");
    print("Email      : ${_email}");
    print("Contact    : ${_contact}");
  }
}


void main()
{
  Employee e1 = Employee();
  e1.set();
  e1.get();
}