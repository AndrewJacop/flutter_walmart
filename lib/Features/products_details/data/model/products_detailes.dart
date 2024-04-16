class ProductsDetailes {
  String? id;
  String? modelNumber;
  String? aboutProduct;
  String? productSpecification;
  String? technicalDetails;
  String? shippingWeight;
  String? productDimensions;
  String? warrenty;
  List<int>? reviews;
  List<dynamic>? variants;

  ProductsDetailes({
    this.id,
    this.modelNumber,
    this.aboutProduct,
    this.productSpecification,
    this.technicalDetails,
    this.shippingWeight,
    this.productDimensions,
    this.warrenty,
    this.reviews,
    this.variants,
  });

  factory ProductsDetailes.fromJson(Map<String, dynamic> json) {
    return ProductsDetailes(
      id: json['id'] as String?,
      modelNumber: json['modelNumber'] as String?,
      aboutProduct: json['aboutProduct'] as String?,
      productSpecification: json['productSpecification'] as String?,
      technicalDetails: json['technicalDetails'] as String?,
      shippingWeight: json['shippingWeight'] as String?,
      productDimensions: json['productDimensions'] as String?,
      warrenty: json['warrenty'] as String?,
      reviews: json['reviews'] as List<int>?,
      variants: json['variants'] as List<dynamic>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'modelNumber': modelNumber,
        'aboutProduct': aboutProduct,
        'productSpecification': productSpecification,
        'technicalDetails': technicalDetails,
        'shippingWeight': shippingWeight,
        'productDimensions': productDimensions,
        'warrenty': warrenty,
        'reviews': reviews,
        'variants': variants,
      };
}
