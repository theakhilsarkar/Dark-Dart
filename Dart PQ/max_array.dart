import 'dart:math';

void main() {
  List l1 = [11, 2, 32, 4, 5, 3, 7, 38, 9];
  int max = l1[0];

  for (int i = 0; i < l1.length; i++) {
    if (max < l1[i]) {
      max = l1[i];
    }
  }
  max = 0;

  l1.forEach(
    (element) {
      if (max < element) {
        max = element;
      }
    },
  );

  for (int i in l1) {
    if (max < i) {
      max = i;
    }
  }

  print(max);
}
