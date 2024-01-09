void main() {
  List l1 = [1, 2, 3, 4, 5];
  print(l1);

  for (int n = 1; n <= 3; n++) {
    int temp = l1[l1.length - 1];
    for (int i = l1.length - 2; i >= 0; i--) {
      l1[i + 1] = l1[i];
    }
    l1[0] = temp;
  }

  print(l1);
}
