import 'class.dart';

void main() {
  // Movie pk = Movie();
  // pk = Movie.set(name: "hi papa", date: "10-10-2023", gener: "LoveStory");
  // pk.releaseMovie();

  Movie pushpa2 = Movie.cinema();
  pushpa2.releaseMovie();
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