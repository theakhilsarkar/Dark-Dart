import 'dart:io';

import 'list.dart';

class Customer {
  //cust_id, cust_name, cust_contact
  int? cust_id;
  int? cust_contact;
  String? cust_name;

  void addCutomer() {
    stdout.write("Enter customer id : ");
    cust_id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter customer name : ");
    cust_name = stdin.readLineSync();
    stdout.write("Enter customer contact : ");
    cust_contact = int.parse(stdin.readLineSync()!);
  }

  void selectProduct() {
    print('Enter 1 to Buy Product');
    print('Enter 0 to Exit Product');
    stdout.write('Enter your choice : ');
    int n = int.parse(stdin.readLineSync()!);
    switch (n) {
      case 1:
        int status;

        do {
          stdout.write('Enter product id : ');
          int id = int.parse(stdin.readLineSync()!);
          cartList.add(id);
          stdout.write('Enter 1 to continue\nEnter 0 to exit\n');
          status = int.parse(stdin.readLineSync()!);
        } while (status != 0);

      case 0:
        print('Show Invoice !');
    }
  }
}
