void main() {
  // declaration
  // List growableList = [1, 2, 3, "hello", true];
  // List reversed = growableList.reversed.toList();
  // Iterable i1 = [1, 2, "itr"];

  // List list = List.filled(5, 0, growable: true);
  // List list2 = List.generate(5, (index) => index + 1, growable: true);
  // List list3 = const [1, 2, 3];
  // List<int> list4 = [1, 2, 3];

  List list = [1, 2, 3, 'dart', true];
  list.replaceRange(0, 2, [10, 20, 30]);
  print(list);

  // assert(2 + 3 == 5);

  // list.add(10);
  // list2.add(6);
  // list3.add(11);

  // print(list3);
  // print(list2);
  // print(list);

  // growableList.forEach((element) {
  //   print(element);
  // });

  // Iterable l1 = growableList
  //     .map(
  //       (e) => true,
  //     )
  //     .toList();
  // print(l1);
  // print("");
  // print(i1.any((element) => element == "hello"));
  // print(growableList.any((element) => element == "hello"));
  // print(i1.isEmpty);
  // print(i1.first);
  // print(i1.indexed);
  // print(reversed);
}
