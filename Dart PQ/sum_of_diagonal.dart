void main() {
  List<List<int>> l1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  int sum = 0;
  for (int i = 0; i < l1.length; i++) {
    for (int j = 0; j < l1.length; j++) {
      if (i == j) {
        sum = sum + l1[i][j];
      }
    }
  }

  print(sum);
}
