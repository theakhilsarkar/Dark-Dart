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
import 'dart:io';

void main() {
  for (int i = 1, x = 6, y = 6; i <= 6; i++, x--, y++) {
    for (int j = 1; j <= 11; j++) {
      if (j == x || j == y) {
        stdout.write("*");
      } else {
        stdout.write(" ");
      }
    }
    print("");
  }
}
