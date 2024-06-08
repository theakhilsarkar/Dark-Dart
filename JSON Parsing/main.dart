import 'dart:convert';

import 'model.dart';

void main() {
  UserModel userModel = jsonParsing();
  print(userModel.name);
  print(userModel.age);
  print(userModel.email);
  print(userModel.address.street);
  print(userModel.address.city);
  print(userModel.phoneNumbers[0].type);
  print(userModel.phoneNumbers[0].number);
  print(userModel.phoneNumbers[1].type);
  print(userModel.phoneNumbers[1].number);
}

UserModel jsonParsing() {
  Map userJson = jsonDecode(json);
  UserModel userModel = UserModel.fromJson(userJson);
  return userModel;
}

String json = ''' {
    "name": "John Doe",
    "age": 30,
    "email": "john.doe@example.com",
    "address": {
      "street": "123 Main St",
      "city": "Anytown"
    },
    "phoneNumbers": [
      {
        "type": "home",
        "number": "123-456-7890"
      },
      {
        "type": "work",
        "number": "098-765-4321"
      }
    ]
  }
''';
