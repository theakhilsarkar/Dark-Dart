import 'class.dart';

void main() {
  // Movie pk = Movie();
  // pk = Movie.set(name: "hi papa", date: "10-10-2023", gener: "LoveStory");
  // pk.releaseMovie();

  // Movie pushpa2 = Movie.cinema();
  // pushpa2.releaseMovie();
  int x = cube(2);
  print(x);
  List l1 = unique([1, 2, 3, 41, 2, 46, 8, 4, 3, 1]);
  print(l1);
}

// udf : block of code, executes when we call it.
// void fun(){}

// Constructor : is special method which is called automatically
// when object created/invoked.
// we can create constructor in only class.
// constructor does not have any return type.
// Constructor always create using class name. same as class name.

// Types of constructor :
// 1. Default Constructor
// 2. Parameterized Constructor
// 3. Named Constructor
// 4. factory constructor

// int cube(int x) {
//   return x * x * x;
// }

int cube(int x) => x * x * x;
List unique(List l1) => l1.toSet().toList(); 


// when any function return anythigs, but code is single line
// function as expression (line)
