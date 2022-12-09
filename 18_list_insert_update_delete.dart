
// write a dart program to insert , update , delete , element in list.

void main()
{
  List l1 = [1,2,3,4,5];

  l1.add(10); // insert
  l1[1] = 20; // update
  l1.remove(3); // remove elemenet
  l1.removeAt(1); // remove at position

  print(l1);
}