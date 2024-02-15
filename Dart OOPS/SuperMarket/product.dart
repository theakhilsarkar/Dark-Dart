class Product {
  //pro_id, pro_name, pro_qty, pro_price
  int? pro_id;
  int? pro_qty;
  int? pro_price;
  int? pro_disc;
  String? pro_name;

  Product._temp({this.pro_id, this.pro_name, this.pro_price, this.pro_qty,this.pro_disc});
  
  factory Product.fromMap(Map m1) {
    return Product._temp(
      pro_id: m1['id'],
      pro_name: m1['name'],
      pro_disc: m1['disc'],
      pro_price: m1['price'],
      pro_qty: m1['qty']
    );
  }
}
