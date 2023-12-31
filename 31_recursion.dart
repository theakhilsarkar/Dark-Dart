// import 'dart:io';

// void main() {
//   List a = List.generate(5, (index) => index);

//   List b = a.map((e) {
//     return "${e + 1} hello";
//   }).toList();

//   print(b);
// }
// // void main()
// // {
// //   // future datatype
// //   // future.delayed - return data in future
// //   // timer.periodic - recursion
// //   // Timer - not return anything
// //   // Transform.rotate
// //   // Transform.skew
// //   // Transform.scale
// //   // Progress bar - circular,liniear

// // }
void main() {
  // Map<String, dynamic> emp = {
  //   'name': "Jaynesh",
  //   'age': 20,
  //   'per': 89.23,
  //   'salary': 89000,
  // };

  // // print(emp['name']);
  // // print(emp['age']);
  // // print(emp['per']);
  // // print(emp['salary']);

  // emp.forEach((key, value) {
  //   print("${key} : ${value}");
  // });

  List myData = [
    {
      'name': "Jaynesh",
      'age': 20,
      'per': 89.23,
      'salary': 89000,
    },
    {
      'name': "Akhil",
      'age': 25,
      'per': 90.23,
      'salary': 90000,
    },
    {
      'name': "Nayan",
      'age': 21,
      'per': 98.23,
      'salary': 50000,
    }
  ];

  myData.forEach((e) {
    e.forEach((key, val) {
      print("${key} : ${val}");
    });
    print("");
  });
}
