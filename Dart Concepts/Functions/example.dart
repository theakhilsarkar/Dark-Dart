import 'dart:io';

class Car {
  int? _modelNo;
  String? _color, _name;

  // encapsulation
  // setter and getter

  //setter
  void initCar() {
    stdout.write("Enter model no : ");
    _modelNo = int.parse(stdin.readLineSync()!);
    stdout.write("Enter color : ");
    _color = stdin.readLineSync()!;
    stdout.write("Enter name : ");
    _name = stdin.readLineSync()!;
  }

  // getter
  void showCar() {
    print("$_modelNo $_name $_color");
  }
}

// class :
// by default all attributes are public in dart
// to make private them use _ underscore sign.
// exa. int _x; void _fun(){}
// If you make variable private, stil it can be access in out of class but within same file.

// variable should be nullable, ?
// ? -> when you assign value to the nullable variable, ! - null-aware opeartor specify value will be come.
