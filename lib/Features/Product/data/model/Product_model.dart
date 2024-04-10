import 'dart:convert';

class ProductsModel {
  final String id;
  final String title;
  final List<String> images;
  final String brand;
  final List<String> colors;
  final String seller;
  final bool isBestSeller;
  final int quantity;
  final List<int> subCategory;
  final double discount;
  final String originalPrice;
  final int returnPolicy;
  final bool isGiftable;

  ProductsModel({
    required this.id,
    required this.title,
    required this.images,
    required this.brand,
    required this.colors,
    required this.seller,
    required this.isBestSeller,
    required this.quantity,
    required this.subCategory,
    required this.discount,
    required this.originalPrice,
    required this.returnPolicy,
    required this.isGiftable,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      id: json['id'],
      title: json['title'],
      images: List<String>.from(json['images']),
      brand: json['brand'].toString(),
      colors: List<String>.from(json['colors']),
      seller: json['seller'].toString(),
      isBestSeller: json['isBestSeller'],
      quantity: json['quantity'],
      subCategory: List<int>.from(json['subCatergory']),
      discount: json['discount'].toDouble(),
      originalPrice: json['originalPrice'],
      returnPolicy: json['returnPolicy'],
      isGiftable: json['isGiftable'],
    );
  }
}
