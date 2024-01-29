import 'dart:io';

void main() {
  int x, y;
  // String z = "10";

  stdout.write("Enter x : ");

  // stdout.write("Enter y : ");

  try {
    x = int.parse(stdin.readLineSync()!);
    y = int.parse(stdin.readLineSync()!);
    print(x / y);
  } on FormatException catch (e) {
    print("formate exception on error $e");
  } catch (e) {
    print("invalid input");
  } finally {
    print("thank you");
  }

  // List l1 = [1, 2, 3, 4, 5];

  // try {
  //   print(l1[6]);
  // } on RangeError catch (e) {
  //   print("Enter sahi input ! $e");
  // } catch (e) {
  //   print("$e invalid input !");
  // }
}
