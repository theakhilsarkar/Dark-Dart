// 3. WAP to make Supermarket Billing System.
// Requirements:
// (A) Verify User Id And Password
// (B) User Input Item Number , Item Name , Quantity , Tax , Discount.
// (C) Display All Record In Ascending order (by item Number)

import 'dart:io';
class SuperMarket
{
  // for verification
  String userName = "admin";
  String passWord = "1234";
  String? userEnteredName;
  String? userEnteredPassword;

  //for item data entry
  int? itemNumber = 0;
  String?  itemName , itemQuantity;

  void verification()
  {
    print("Enter username : ");
    userEnteredName = stdin.readLineSync();
    print("Enter password : ");
    userEnteredPassword = stdin.readLineSync();

    if(userName == userEnteredName && passWord == userEnteredPassword)
    {
      print("Login success full");
    }
  
  }

  void userInput()
  {
    print("Enter item number : ");
    String x = stdin.readLineSync()!;
    itemNumber = int.parse(x);

    print("Enter item name : ");
    itemName = stdin.readLineSync();

    print("Enter item quantity : ");
    itemQuantity = stdin.readLineSync();
  }

  void userOutput()
  {
    print("No.    Name      Qn.");  
    print(" $itemNumber     $itemName     $itemQuantity\n\n");
  }
}

void main()
{
  SuperMarket s1 = SuperMarket();
  s1.verification();
  
  List<SuperMarket> itemData = [];
  int n = 0;
  print("How many item you want to buy ?");
  String? x = stdin.readLineSync()!;
  n = int.parse(x);

  for(int i=0; i<n; i++)
  {
    SuperMarket s2 = SuperMarket();
    itemData.add(s2);
  }

  for(int i=0; i<n; i++)
  {
    itemData[i].userInput();
  }

  for(int i=0; i<n; i++)
  {
    itemData[i].userOutput();
  }

  

}