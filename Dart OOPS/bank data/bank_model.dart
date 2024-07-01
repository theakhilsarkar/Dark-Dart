// Why Model class: to convert Map data to dart object.
// How to access data from Map ? ans : using key
// How to access data from Object ? ans : objectName.variable_name, using (.) dot operator.
// Single Map : create the class, and return object.
// List of Map : covert into List of Object. By loop, every Map convert into Object.

Map data = {
  "isActive": false,
  "balance": "3,960.64",
  "age": 30,
  "eyeColor": "blue",
  "name": "Dawn Keith",
  "gender": "female",
  "company": "COSMOSIS",
  "email": "dawnkeith@cosmosis.com",
  "phone": "+1 (839) 437-3421",
  "address": "392 Clifford Place, Fontanelle, Arizona, 2687"
};

// class : user define datatype
// {} -> class

class BankModel {
  // declare variable as per Map
  List<BankModel> bankList = [];
  late bool isActive;
  late int age;
  late String eyeColor, name, balance, gender, company, email, phone, address;

  // create a private named constructor to Initialize variables.
  BankModel._init({
    required this.address,
    required this.age,
    required this.balance,
    required this.company,
    required this.email,
    required this.eyeColor,
    required this.gender,
    required this.isActive,
    required this.name,
    required this.phone,
  });

  // create a factory constructor to return object after initialization

  factory BankModel._fromMap(Map m1) {
    return BankModel._init(
      address: m1['address'],
      age: m1['age'],
      balance: m1['balance'],
      company: m1['company'],
      email: m1['email'],
      eyeColor: m1['eyeColor'],
      gender: m1['gender'],
      isActive: m1['isActive'],
      name: m1['name'],
      phone: m1['phone'],
    );
  }
  
  // covert all list of map into list of object using .map() method.

  BankModel.fromList(List<Map> bank) {
    bankList = bank.map((e) => BankModel._fromMap(e)).toList();
  }
}
