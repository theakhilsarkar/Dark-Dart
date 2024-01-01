
// write a dart program to print all negative element of array

import 'dart:io';
void main()
{
  List l1 = [];
  
  print("Enter element of List : ");
  for(int i=1; i<=5; i++)
  {
    String? n = stdin.readLineSync();
    int x = int.parse(n!); 
    l1.add(x);
  }

  print("\n");
  
  for(int i=0; i<5; i++)
  {
    if(l1[i]<0)
    {
      print(l1[i]);
    }
  }
  
}