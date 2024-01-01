// Write a Dart program to concate list element
// value with hello.
// For exmple,
// input: [1, 2, 3]
// output: [1 hello, 2 hello, 3 hello]

void main() {
  // Way - 1 - using list.join(string) method

  // List numList = [1, 2, 3, 4];
  // String con = " hello ";
  // String newGen = numList.join(con);
  // print(newGen);

  // Way - 2 - using loop
  List numList = [1, 2, 3, 4];
  String con = " hello";

  for (int i = 0; i < numList.length; i++) {
    numList[i] = numList[i].toString() + con;
  }

  print(numList);
}
