import 'demo.dart';

void main() {
  List l1 = [];

  for (int i = 1; i < 5; i++) {
    Demo d1 = Demo();
    d1
      ..set(id: i, name: "name $i")
      ..get();
    l1.add(d1);
  }

  print("");

  List.generate(l1.length, (index) => l1[index].get());
}
