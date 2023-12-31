// 1. Write a Dart program to concate list element
// value with hello.
// For exmple,
// input: [1, 2, 3]
// output: [1 hello, 2 hello, 3 hello]



void main() {
  List l1 = [1,2,3];
  List l2 = ["Hello","Hello","Hello"];
  List l3 = [];

  for(int i=0; i<=2; i++)
  {
    l3.add("${l1[i]} ${l2[0]}");
  }
  print(l3);
  
}
