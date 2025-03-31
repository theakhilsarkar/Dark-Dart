// pattern
// logic
// 1. row-3, col-6
// outer - 3
// inner - 6
// space - value
// value - series
// indexing - page

// (1,6),6
// (2,5),7
// (3,4),8
// (4,3),9
// (5,2),10
// (6,1),11

// 6,1
// 7,2
// 8,3
import 'dart:io';

void main() {
  for (int i = 1, x = 6, y = 6, z = -4, a = 16;
      i <= 11;
      i++, x--, y++, z++, a--) {
    for (int j = 1; j <= 11; j++) {
      if (j == x || j == y || (i >= 6 && j == z) || (i >= 6 && j == a)) {
        stdout.write("*");
      } else {
        stdout.write(" ");
      }
    }
    print("");
  }

  // for (int i = 1, x = 6, y = 6, z = 11; i <= 11; i++, x--, y++, z--) {
  //   for (int j = 1; j <= 11; j++) {

  //     if (i == j || j == z) {
  //       stdout.write("*");
  //     } else {
  //       stdout.write(" ");
  //     }
  //   }
  //   print("");
  // }
  // for (int i = 1, x = 11; i <= 6; i++, x--) {
  //   for (int j = 1; j <= 11; j++) {
  //     if (i == j || j == x) {
  //       stdout.write("*");
  //     } else {
  //       stdout.write(" ");
  //     }
  //   }
  //   print("");
  // }
}
