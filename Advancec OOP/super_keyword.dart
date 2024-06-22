void main() {
  SubClass subClass = SubClass();
  subClass.superFunction();
  subClass.subFunction();
}

class SuperCalss {
  var superVar = "super class variable !";
  void superFunction() {
    print(superVar);
  }
}

class SubClass extends SuperCalss {
  // use super keyword to access super class's method or variable.

  @override // method overriding notation
  void superFunction() {
    print(super.superVar);
  }

  void subFunction() {
    // to aceess variable
    super.superVar = "Now youn changed !";
    // to access method
    super.superFunction();
  }
}
