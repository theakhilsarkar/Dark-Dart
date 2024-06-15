class UserModel {
  String? name;
  int? age;
  String? email;
  Address address;
  List<PhoneNumber> phoneNumbers;

  UserModel({
    required this.name,
    required this.age,
    required this.email,
    required this.address,
    required this.phoneNumbers,
  });

  factory UserModel.fromJson(Map json) {
    return UserModel(
      name: json['name'],
      age: json['age'],
      email: json['email'],
      address: Address.fromJson(json['address']),
      phoneNumbers: (json['phoneNumbers'] as List).map((i)=>PhoneNumber.fromJson(i),).toList(),
    );
  }
}

class Address {
  String? street;
  String? city;

  Address({
    required this.street,
    required this.city,
  });

  factory Address.fromJson(Map json) {
    return Address(street: json['street'], city: json['city']);
  }
}

class PhoneNumber {
  String? type;
  String? number;

  PhoneNumber({
    required this.type,
    required this.number,
  });

  factory PhoneNumber.fromJson(Map json) {
    return PhoneNumber(type: json['type'], number: json['number']);
  }
}
