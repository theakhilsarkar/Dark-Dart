import 'dart:math';

import 'adv_flutter_exam1.dart';
import 'c_questions.dart';
import 'flutter_3pm.dart';
import 'flutter_11am.dart';

void main() {
  Random random = Random();
  int name = random.nextInt(2);

  int question1 = random.nextInt(30);
  int question2 = random.nextInt(30);
  int question3 = random.nextInt(30);
  int question4 = random.nextInt(30);
  int question5 = random.nextInt(30);

  print("\n");
  print("Name : ${studentListOf11Am[0]}");
  print("");

  print("Q1 : ${advanceFlutterExam1[question1]}");
  print("Q2 : ${advanceFlutterExam1[question2]}");
  print("Q3 : ${advanceFlutterExam1[question3]}");
  print("Q4 : ${advanceFlutterExam1[question4]}");
  print("Q5 : ${advanceFlutterExam1[question5]}");

  print("\n");
}
