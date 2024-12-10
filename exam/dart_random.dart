import 'dart:math';

import 'adv_flutter_exam1.dart';

import 'flutter_11am.dart';
import 'flutter_3pm.dart';
import 'php_questions.dart';

void main() {
  Random random = Random();
  int name = random.nextInt(13);

  int question1 = random.nextInt(24);
  int question2 = random.nextInt(24);
  int question3 = random.nextInt(24);
  int question4 = random.nextInt(24);
  int question5 = random.nextInt(24);

  print("\n");
  print("Name : ${studentListOf3pm[name]}");
  print("");

  print("Q1 : ${php_questions_list[question1]}");
  print("Q2 : ${php_questions_list[question2]}");
  print("Q3 : ${php_questions_list[question3]}");
  print("Q4 : ${php_questions_list[question4]}");
  print("Q5 : ${php_questions_list[question5]}");

  print("\n");
  
}
