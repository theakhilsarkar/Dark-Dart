import 'dart:math';

void main() {
  List student = [
    "Amee Desai",
    "Bansi vadher",
    "Nirja Vavadiya",
    "Abhi Ghoghari",
    "Jay Kalsariya",
    "Paras Saliya",
    "Vinisha Lathiya",
    "Om Kakdiya",
    "Ayushi Nikhare",
    "Yashvi Baravaliya",
    "Krisha Kakadiya",
    "Krisha Gujarati",
    "Vasu Bhurakhaya",
    "Smit Chitroda",
    "Venshi Gabani"
  ];

  Random r = Random();

  int len = r.nextInt(student.length);

  print(student[len]);
}
