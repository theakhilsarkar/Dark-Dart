void main() async {
  // Asyn and Await Keyword
  // int x = await Future.delayed(
  //   Duration(seconds: 3),
  //   () => 10,
  // );
  // print(x);

  int x = await Future(() => 10);
  print(x);
}
