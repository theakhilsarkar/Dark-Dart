import 'dart:io';

void main() {
  // exception handling : error
  // runtime error
  // try..catch

  // print(10 / 0); // divide by zero exception
  int? age;
  stdout.write("Enter your age : ");

  // Format Exception : when you convert any data which is non-convertable.
  // 22 -> int -> 22
  // name -> int -> format exception

  try // its try/check error comes or not
  {
    age = int.parse(stdin.readLineSync()!);
  } on FormatException {
    print("format exception caught");
  } catch (error) {
    print("Value must be integer / invalid value !");
  } finally {
    print(age ?? 0);
  }

  // print(age ?? 0); // null - replacement operator : ??
  
}

