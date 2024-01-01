void main() {
  var x = 123;
  var ld = x % 10;
  do {
    x = x ~/ 10;
  } while (x > 9);
  print(ld + x);
}
