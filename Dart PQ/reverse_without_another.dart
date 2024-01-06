void main() {
  List l1 = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  int start = 0, end = l1.length - 1;
  for (int i = 1; i <= (l1.length ~/ 2); i++) {
    int temp = l1[end];
    l1[end] = l1[start];
    l1[start] = temp;
    start++;
    end--;
  }

  print(l1);
}
