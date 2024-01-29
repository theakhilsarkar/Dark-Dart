import 'fromMap.dart';
import 'fac.dart';

void main() {
  Map m1 = {
    'id': 101,
    'name': "iPhone12",
    'price': 52000,
    'rating': 4,
  };

  Product p1 = Product(m1);

  print(p1.p_id);
  print(p1.p_name);
  print(p1.p_price);
  print(p1.p_rating);
}
