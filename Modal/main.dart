import 'product.dart';
import 'product_modal.dart';

void main() {
  ProductModal productModal = ProductModal.fromJson(productJson);
  print(productModal.products[0].title);
  print(productModal.products[0].description);
  print(productModal.products[0].category);
  print(productModal.products[0].tags[0]);
  print(productModal.products[0].tags[1]);
  print(productModal.products[0].dimensions.height);
  print(productModal.products[0].dimensions.width);
  print(productModal.products[0].reviews[0].comment);
  print(productModal.products[0].meta.createdAt);
  print(productModal.products[0].images[0]);
}
