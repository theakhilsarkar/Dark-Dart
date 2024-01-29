class Product {
  late int p_id;
  late int p_price;
  late String p_name;
  late int p_rating;

  Product._temp(this.p_id, this.p_name, this.p_price, this.p_rating);

  factory Product(Map m1) {
    int p_id = m1['id'];
    int p_price = m1['price'];
    String p_name = m1['name'];
    int p_rating = m1['rating'];
    return Product._temp(p_id, p_name, p_price, p_rating);
  }
}
