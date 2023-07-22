import 'dart:io';

void main() {
  int firstDigit = 0;
  int secondDigit = 1;
  int sum = 0;

  stdout.write("enter end point of sequence : ");
  int choice = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= choice; i++) {
    sum = firstDigit + secondDigit;
    stdout.write("$sum ");
    firstDigit = secondDigit;
    secondDigit = sum;
  }
}
