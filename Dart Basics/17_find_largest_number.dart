
// Write a dart program to find largest number in array.

//import 'dart:io';
void main()
{
  List <int>l1 = [1,2,32,4,5];
  int max = l1[0];

  for(int i=0; i<5; i++)
  {
    if(l1[i]>max)
    {
      max = l1[i];
    }
  }

  print(max);
}