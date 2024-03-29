import 'dart:io';

void main() {
  int x = 10;
  int y = 0;
  String name = 'name';

  try {
    y = int.parse(name);
  }
  // on FormatException catch (e) {
  //   print(e);
  //   }
  catch (e) {
    print(e.toString() + "error occured");
  } finally {
    print("jp bhi ");
  }
}
