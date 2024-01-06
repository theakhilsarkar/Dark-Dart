void main() {
  List l1 = [1, 9, 2, 8, 3, 7, 4, 5, 6];
  l1.sort();
  l1.remove(l1.last);
  print(l1.last);
}
