// OOPs in Dart
// Object Oriented Programming

// OOPs is programming paradigm(concept,method,way) to make code
// structurized, organized, secure and reuseable.

// oop is class and object based concept to progarm anything.

// class :
// 1. class is collection of methods and attributes.
// 2. class is a blueprint or template to craeting object.
// 3. class is user define datatype. : modal class.

// object :
// 1. object is used to access methods and attributes declared in the class.
// 2. object is an instance/representative of class.
// 3. object is one type of variable which follow class as a blueprint.

// 1. Data Encapsualtion
// 2. Inheritance
// 3. Polymorphism
// 4. Data Abstracion

// what, why and how

// 1. Data Encapsualtion : structrize, organize & reuseable
// -> We encapsulate/add/pack method and attribute in same class in defferent units
// where we declare methods and attributes saperately to ease of access.

// -> we can easily understand coding structure & access as per need.
// -> by encapsulation our code become structurize, organize and reuseable.

// -> we declared same behavioural attribute and methods in same class.
// -> we keep attributes and methods in defferent units in the class.
// -> we can create multiple objects of same class to access methods and attributes of the class.

class Area // class name always start from capital letter
{
  int? height, width; // variables declared in the class called as attributes.
  // ? we have to put null operator when we declare attribute in the class.
  // or else we can use late keyword to specify or confirmation value will must initialize.
  // late : if value not initilize in late define variable, it will throw a error: late initialization in attribute.

  (int?, int?) areaOfRectangle(int height, int width) {
    // if we not specify datatype in params, it will become dynamic
    this.height = height;
    this.width = width;
    // this : to define global attribute & methods in the class
    return (
      this.height,
      this.width
    ); // we can return multiple values - but specify return type as well
  }
}

//datatype variable = value;
// className obj = Class();

void main() {
  // Area a1 = Area();
  // var data = a1.areaOfRectangle(10, 20);
  // print(data.$1);
  // print(data.$2);

  // int a, b;
  // (a!, b!) = a1.areaOfRectangle(10, 20);
  // print(a);
  // print(b);

  // var a1 = Area(); // it fix type of first assign value
  // dynamic a2 = Area(); // its dynamic, can accept all type of value.
  
}
