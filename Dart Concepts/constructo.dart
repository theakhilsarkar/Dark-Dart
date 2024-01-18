void main() {
  List<Demo> arrayOfDemo = [];

  for (int i = 1; i <= 5; i++) {
    Demo d1 = Demo.named();
    d1.add(i);
    arrayOfDemo.add(d1);
  }

  print(arrayOfDemo[0].i);
  print(arrayOfDemo[1].i);
  print(arrayOfDemo[2].i);
  print(arrayOfDemo[3].i);
  print(arrayOfDemo[4].i);
}

class Demo {
  late int i;
  void add(int i) {
    this.i = i;
    print("$i number");
  }

  Demo() {
    print("Default constructor !");
  }

  Demo.paramterized({required String? arg}) {
    print(arg! + " Paramterized constructor !");
  }

  Demo.named() {
    print("named constructor !");
  }
}
