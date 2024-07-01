import 'bank.dart';
import 'bank_model.dart';

void main() {
  BankModel bankModel = BankModel.fromList(bankData);

  for (int i = 0; i < bankModel.bankList.length; i++) {
    print(bankModel.bankList[i].name);
    print(bankModel.bankList[i].balance);
    print("");
  }

  // print("Account status : ${user1.isActive}");
  // print("Account Holder Name : ${user1.name}");
  // print("Account Holder Gender : ${user1.gender}");
  // print("Account Holder Age : ${user1.age}");
  // print("Account Holder eye color : ${user1.eyeColor}");
  // print("Account balance : ${user1.balance}");
  // print("Account Holder Company Name : ${user1.company}");
  // print("Account Holder Email : ${user1.email}");
  // print("Account Holder Phone : ${user1.phone}");
  // print("Account Holder Address : ${user1.address}");
  Solution s1 = Solution();
  s1.twoSum([1, 2, 3, 4], 5);
}

  class Solution {
    List<int> twoSum(List<int> nums, int target) {
      // code ,,,,,
      return [];
    }
  }

// model class + factory constrctor
// for,while,do..while loop no use
// and no any method, 
// final constrc
// .map(), for in, for each
// pure OOP, class
// 3:29 : 3:50