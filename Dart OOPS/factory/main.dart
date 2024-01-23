import 'fromMap.dart';
import 'fac.dart';

void main() {
  Shape s1 = Shape(length: 10, width: 10);
  print(s1.area);
  Map m1 = {'id': 101, 'name': "Aayush", 'age': 19};
  Student s2 = Student.fromMap(m1);
  print(s2.id);
  print(s2.name);
  print(s2.age);
}
