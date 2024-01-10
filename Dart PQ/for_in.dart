void main() {
  List l1 = [1, 2, 3, 4, 5];
  List l2 = List.from(l1, growable: false); // fixed length list
  List l3 = List.of(growable: true, [12, 34, 56, 78, 90]); // growable list
  List l4 = List.unmodifiable(l3); // un modifiable

  // to print or use detail of list
  // loop

  for (var item in l4) {
    print(item);
  }

  l1.forEach(
    (element) => print(element),
  );

  List l5 = l1
      .map(
        (e) => e,
      )
      .toList();

  print(l5);
  print(l1);
  print(l2);
  l3[0] = 111;
  print(l3);
  
  print(l4);
}
