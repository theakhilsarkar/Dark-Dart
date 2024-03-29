import 'dart:io';

void main() {
  int x = 1;
  for (int i = 1; i <= 6; i++) {
    for (int j = 1; j <= 6; j++) {
      stdout.write(x);
      x++;
    }
  }
}
