class Student {
  late final int id;
  late final String name;
  late final int age;

  Student._temp(this.id, this.age, this.name);

  factory Student.fromMap(Map m1) {
    final id = m1['id'];
    final name = m1['name'];
    final age = m1['age'];
    return Student._temp(id, age, name);
  }
}
