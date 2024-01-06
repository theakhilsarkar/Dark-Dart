import 'dart:io';

void main() {
  List l1 = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  stdout.write("Enter index to left rotate : ");
  int n = int.parse(stdin.readLineSync()!);

  print(l1);
  for (int i = 0; i <= n; i++) {
    int last = l1[i];
    for (int j = 0; j < l1.length - 1; j++) {
      l1[j] = l1[j + 1];
    }
    l1[l1.length - 1] = last;
  }

  print(l1);
}
