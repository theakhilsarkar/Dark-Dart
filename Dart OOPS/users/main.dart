import 'user_data.dart';
import 'user_model.dart';

void main() {
  UserModel userModel = UserModel(userData);
  print(userModel.userList[0].address.geo.lat);
}
