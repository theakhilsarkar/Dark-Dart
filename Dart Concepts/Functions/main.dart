import 'example.dart';

void main() {
  // final,const,late

  // const : const make variable fixed with
  // initialized value. If you dont assign value during declaration
  // const make variabel fix without value.

  // final : final make variable's value fixed.
  // you can make variable during declaration or after one time.

  // late : you specify value will be come during runtime.

  // cascade operator : to call method of class in single line of object.
  // Car c1 = Car();
  // c1
  //   ..initCar()
  //   ..showCar()
  //   ..showCar();

  function(90);
}

void function([int eng = 0, int maths = 0, int sci = 0]) {
  print(maths + eng);
}

// Text() = fontsize

// 1. 