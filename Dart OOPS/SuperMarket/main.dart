// import 'dart:io';

// import 'customer.dart';
// import 'list.dart';
// import 'product.dart';

// void main() {
//   Customer c1 = Customer();

//   List<Product> l1 = List.generate(
//       productList.length, (index) => Product.fromMap(productList[index]));

//   for (int i = 0; i < l1.length; i++) {
//     print('${l1[i].pro_id}');
//     print('${l1[i].pro_name} ${l1[i].pro_disc}% ${l1[i].pro_price}\n');
//   }

//   c1.addCutomer();
//   c1.selectProduct();

//   print('Your Bill -> ');
//   for (int i = 0; i < cartList.length; i++) {
//     if (cartList[i] == l1[i].pro_id) {
//       // double finalPrice = (l1[i].pro_price*l1[i].pro_disc!)/100 + l1[i].pro_price!;
//       print('${l1[i].pro_id}');
//       print('${l1[i].pro_name} ${l1[i].pro_disc}% ${l1[i].pro_price} ${l1[i].pro_price} $finalPrice\n');
//     }
//   }
// }
