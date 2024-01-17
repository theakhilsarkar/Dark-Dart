void main() {
  sum(10, 20);
  add(10, 20);
  fun(10, b: 12);
  hello(b: 45);
  print(give());
  print(exp());
}

int give() {
  return 10;
}

int exp() => 10;

void sum(int a, int b) {
  print(a + b);
}

void add(int a, [int? b = 10]) {
  print(a);
  print(b);
}

void fun(int a, {int? b}) {
  print(a);
  print(b);
}

void hello({required int b}) {
  print(b);
}
