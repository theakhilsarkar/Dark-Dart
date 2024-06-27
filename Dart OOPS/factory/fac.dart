// List of Map, Map of List, Map of Map
// Dart Objects, List of Object

// User define Datatype
// {
//     'name': 'Karm',
//     'age': 12,
//     'std': 5,
//     'id': 101,
//   },
// Model class
class Student {
  String? name;
  int? id, std, age;

  Student._(
      {required this.name,
      required this.age,
      required this.id,
      required this.std});

  factory Student.fromMap(Map m1) {
    return Student._(
        name: m1['name'], age: m1['age'], id: m1['id'], std: m1['std']);
  }
}
