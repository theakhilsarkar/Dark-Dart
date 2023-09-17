import 'dart:io';

Future<List> getUserData(String nameFromUser, int idFromUser) async {
  var name = await getName(nameFromUser);
  var id = await getId(idFromUser);
  return [id, name];
}

String getName(String name) {
  return name;
}

int getId(int id) {
  return id;
}

void main() async {
  stdout.write("Enter your id : ");
  int? id = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the name : ");
  String? name = stdin.readLineSync()!;
  List userList = await getUserData(name, id);
  print("id : ${userList[0]}\nname : ${userList[1]}");
}
