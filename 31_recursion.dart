import 'dart:io';

void main() {
  List a = List.generate(5, (index) => index);

  List b = a.map((e) {
    return "${e + 1} hello";
  }).toList();

  print(b);
}
