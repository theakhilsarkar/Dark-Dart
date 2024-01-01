import 'dart:io';

void main() {
  Set s1 = {1, 2, 3, 4, 5};
  Set s2 = {4, 5, 6, 7, 8};

  print(s1.runtimeType);

  print(s1.union(s2));
  print(s1.intersection(s2));
  print(s1.difference(s2));
  print(s1.length);
  print(s1.first);
  print(s1.isEmpty);
}
