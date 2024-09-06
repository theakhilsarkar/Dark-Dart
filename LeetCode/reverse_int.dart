void main() {
  print(reverse(120));
}

int reverse(int x) {
  int reverse = 0;

  if (x < 0) {
    x *= -1;
    while (x != 0) {
      reverse = (reverse * 10) + (x % 10);
      x ~/= 10;
    }
  } else {
    while (x != 0) {
      reverse = (reverse * 10) + (x % 10);
      x ~/= 10;
    }
  }

  return reverse;
}
