// 2. WAP to make Railway Reservation System.
// Requirements:
// (A) User Input Train Number , Train Name , Source , Destination , Train Time.
// (B) Display Record By Search Train Number.
// (C) Minimum 3 Input Train Record.

import 'dart:io';

class Railway
{
  int trainNumber = 0;
  String? trainName,trainSource,trainDestination,trainTime;

  void setData()
  {
    print("Enter train number : ");
    String x = stdin.readLineSync()!;
    trainNumber = int.parse(x);

    print("Enter train name : ");
    trainName = stdin.readLineSync();

    print("Enter train source : ");
    trainSource = stdin.readLineSync();

    print("Enter train destination : ");
    trainDestination = stdin.readLineSync();

    print("Enter train time : ");
    trainTime = stdin.readLineSync();
  }

  void getData(int? tNo)
  {
    if(tNo == trainNumber)
    {
      print("TrainNumber    TrainName   TrainSource   TrainDestination    TrainTime");
      print("   $trainNumber           $trainName          $trainSource          $trainDestination          $trainTime");
    }
    
    
  }
}
void main()
{
  // Railway r1 = Railway();
  // r1.setData();
  // r1.getData();

  List<Railway> trainData = [];

  for(int i=0; i<3; i++)
  {
    Railway r1 = Railway();
    trainData.add(r1);
  }

  for(int i=0; i<3; i++)
  {
    trainData[i].setData();
    print("\n");
  }

  print("Which trains data you want to show :");
  int userTrainNumber = 0;
  String n = stdin.readLineSync()!;
  userTrainNumber = int.parse(n);

  for(int i=0; i<3; i++)
  {
    trainData[i].getData(userTrainNumber);
  }




}