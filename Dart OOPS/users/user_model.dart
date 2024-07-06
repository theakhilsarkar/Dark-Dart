/*
{
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {"lat": "-37.3159", "lng": "81.1496"}
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  },

 */

class UserModel {
  List<UserModel> userList = [];
  late String name, username, email, phone, website;
  late int id;
  late Address address;
  late Company company;
  UserModel._init({
    required this.address,
    required this.company,
    required this.email,
    required this.id,
    required this.name,
    required this.phone,
    required this.username,
    required this.website,
  });
  factory UserModel._fromMap(Map m1) {
    return UserModel._init(
      address: Address.fromMap(m1['address']),
      company: Company.fromMap(m1['company']),
      email: m1['email'],
      id: m1['id'],
      name: m1['name'],
      phone: m1['phone'],
      username: m1['username'],
      website: m1['website'],
    );
  }

  UserModel(List l1) {
    userList = l1.map((e) => UserModel._fromMap(e)).toList();
  }
}

class Address {
  late String street, suite, city, zipcode;
  late Geo geo;
  Address._init({
    required this.city,
    required this.geo,
    required this.street,
    required this.suite,
    required this.zipcode,
  });
  factory Address.fromMap(Map m1) {
    return Address._init(
      city: m1['city'],
      geo: Geo.fromMap(m1['geo']),
      street: m1['street'],
      suite: m1['suite'],
      zipcode: m1['zipcode'],
    );
  }
}

class Geo {
  late String lat, lng;
  Geo._init({required this.lat, required this.lng});
  factory Geo.fromMap(Map m1) {
    return Geo._init(lat: m1['lat'], lng: m1['lng']);
  }
}

class Company {
  late String name, catchPhrase, bs;
  Company._init(
      {required this.bs, required this.catchPhrase, required this.name});
  factory Company.fromMap(Map m1) {
    return Company._init(
      bs: m1['bs'],
      catchPhrase: m1['catchPhrase'],
      name: m1['name'],
    );
  }
}
