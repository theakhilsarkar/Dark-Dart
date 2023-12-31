import 'dart:io';

void main() {
  stdout.write('enter value of n : ');
  var n = int.parse(stdin.readLineSync()!);
  var sum = 0;

  do {
    sum = sum + n;
    n--;
  } while (n > 0);

  print(sum);
}
