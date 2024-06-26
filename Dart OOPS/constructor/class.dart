class Movie {
  late String name, date, gener;

  // what is use of constructor ?
  // used to initialize attributes of the class.

  // 1. default constructor
  Movie() {
    print("Today BOX OFFICE");
  }

  // 2. named constructor
  Movie.set(
      {required String name, required String date, required String gener}) {
    this.name = name;
    this.date = date;
    this.gener = gener;
    // this keyword represent global variable.
  }

  // named constructor : we can create multiple constructor using defferent name.

  // factory constructor : can return object of current class.

  factory Movie.cinema() {
    return Movie.set(
        name: "Pushpa 2", date: "12-12-2012", gener: "Action/Crime");
  }

  void releaseMovie() {
    print("Movie name : $name");
    print("Release Date : $date");
    print("Movie Gener : $gener");
  }
}

// OOPs
// class name must starts from Capital and method names from small.
// To use big words use CamelCase or _underscore connector style.
// Each class should have single reponsibility.
// Each process of class should have saprate/defferent methodss.
// attribute declared in the class should be private and method public.
// Each file should hold same type of class.

