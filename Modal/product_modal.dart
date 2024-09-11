// Map -> class
// List -> Map -> List<ob>

import '../Dart OOPS/SuperMarket/product.dart';

class ProductModal {
  late int skip, limit, total;
  List<Product> products = [];
  ProductModal(this.skip, this.limit, this.total, this.products);
  factory ProductModal.fromJson(Map m1) {
    return ProductModal(
      m1['skip'],
      m1['limit'],
      m1['total'],
      (m1['products'] as List).map((e) => Product.fromJson(e)).toList(),
    );
  }
}

class Product {
  late int id, stock, weight, minimumOrderQuantity;
  late String title,
      description,
      category,
      brand,
      sku,
      warrantyInformation,
      shippingInformation,
      availabilityStatus,
      returnPolicy,
      thumbnail;
  late double price, discountPercentage, rating;
  late List<String> tags;
  late Dimensions dimensions;
  late List<Review> reviews;
  late Meta meta;
  late List<String> images;

  Product({
    required this.id,
    required this.stock,
    required this.weight,
    required this.minimumOrderQuantity,
    required this.title,
    required this.description,
    required this.category,
    required this.brand,
    required this.sku,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.returnPolicy,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.tags,
    required this.dimensions,
    required this.reviews,
    required this.meta,
    required this.images,
    required this.thumbnail,
  });

  factory Product.fromJson(Map m1) {
    return Product(
      id: m1['id'],
      title: m1['title'],
      description: m1['description'],
      category: m1['category'],
      stock: m1['stock'],
      price: m1['price'],
      discountPercentage: m1['discountPercentage'].toDouble(),
      rating: m1['rating'].toDouble(),
      brand: m1['brand'] ?? "China",
      sku: m1['sku'],
      weight: m1['weight'],
      warrantyInformation: m1['warrantyInformation'],
      shippingInformation: m1['shippingInformation'],
      availabilityStatus: m1['availabilityStatus'],
      returnPolicy: m1['returnPolicy'],
      minimumOrderQuantity: m1['minimumOrderQuantity'],
      thumbnail: m1['thumbnail'],
      tags: m1['tags'],
      dimensions: Dimensions.fromJson(m1['dimensions']),
      reviews: (m1['reviews'] as List)
          .map((element) => Review.fromJson(element))
          .toList(),
      meta: Meta.fromJson(m1['meta']),
      images: m1['images'],
    );
  }
}

class Meta {
  late String createdAt, updatedAt, barcode, qrCode;
  Meta(this.createdAt, this.updatedAt, this.barcode, this.qrCode);
  factory Meta.fromJson(Map m1) {
    return Meta(m1['createdAt'], m1['updatedAt'], m1['barcode'], m1['qrCode']);
  }
}

class Review {
  late int rating;
  late String comment, date, reviewerName, reviewerEmail;

  Review(this.rating, this.comment, this.date, this.reviewerName,
      this.reviewerEmail);
  factory Review.fromJson(Map m1) {
    return Review(m1['rating'], m1['comment'], m1['date'], m1['reviewerName'],
        m1['reviewerEmail']);
  }
}

class Dimensions {
  late double height, width, depth;
  Dimensions(this.height, this.width, this.depth);
  factory Dimensions.fromJson(Map m1) {
    return Dimensions(m1['height'].toDouble(), m1['width'].toDouble(),
        m1['depth'].toDouble());
  }
}
