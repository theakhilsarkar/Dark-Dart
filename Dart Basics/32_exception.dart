import 'dart:io';

void main() {
  /*
      ! = null check operator
      ? = Null aware operator
      ?? = null Replecement operator
   */
  int a, b;

  try {
    stdout.write("Enter a: ");
    a = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Enter b: ");
    b = int.parse(stdin.readLineSync() ?? "0");
    print("$a / $b = ${a ~/ b}");
  } on IntegerDivisionByZeroException catch (e) {
    print("ERROR : $e ");
    print("Can not Divide by Zero");
  } catch (e) {
    print("ERROR : $e");
  } finally {
    print("Finally is Running..🙏☆*: .｡. o(≧▽≦)o .｡.:*☆");
  }
}
