import 'dart:io';


// 1
// 2 9 10
// 3 8 11 14
// 5 6 12 13 15

void main() {
  int x = 1;

  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$x ");
    }
    x = i;
    print("");
  }
}
