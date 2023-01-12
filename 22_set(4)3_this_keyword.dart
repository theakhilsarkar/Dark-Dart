// 3. WAP to create a class Hotel with fields like id, name, type, staff_size, room_size, establish_year, address, rating_type and website. 
// Illustrate the use of encapsulation (strict encapsulation) with this keyword.

import 'dart:io';
class Hotel
{
 String? id,name,type,staff_size,room_size,establish_year,address,rating_type,website;

  void set(String? id,String? name,String? type,String? staff_size,String? room_size,String? establish_year,String? address,String? rating_type,String? website)
  {
    this.id = id;
    this.name = name;
    this.type = type;
    this.staff_size = staff_size;
    this.room_size = room_size;
    this.establish_year = establish_year;
    this.address = address;
    this.rating_type = rating_type;
    this.website = website;

    print("$id $name $type $staff_size $room_size $establish_year $address $rating_type $website");

  }
}

void main()
{
  Hotel h1 = Hotel();
  String? id,name,type,staff_size,room_size,establish_year,address,rating_type,website;

  print("Enter hotel id : ");
  id = stdin.readLineSync();

  print("Enter hotel name : ");
  name = stdin.readLineSync();

  print("Enter hotel type : ");
  type = stdin.readLineSync();

  print("Enter hotel staff size : ");
  staff_size = stdin.readLineSync();

  print("Enter hotel room size: ");
  room_size = stdin.readLineSync();

  print("Enter hotel establish year : ");
  establish_year = stdin.readLineSync();

  print("Enter hotel address : ");
  address = stdin.readLineSync();

  print("Enter hotel rating type : ");
  rating_type = stdin.readLineSync();

  print("Enter hotel website : ");
  website = stdin.readLineSync();

  h1.set(id, name, type, staff_size, room_size, establish_year, address, rating_type, website);

}