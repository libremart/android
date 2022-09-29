import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  const Product._();

  const factory Product({
    required String? id,
    required String? published,
    required String? updated,
    required String? product,
    required String? productName,
    required String? productPackage,
    required String? vendor,
    required String? vendorName,
    required String? iconUrl,
    required String? subtitle,
    required String? description,
    required String? donateLink,
    required List<String>? screenshots,
    required List<String>? links,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  factory Product.initial() {
    return const Product(
      id: null,
      published: null,
      description: null,
      donateLink: null,
      iconUrl: null,
      links: null,
      product: null,
      productName: null,
      productPackage: null,
      screenshots: null,
      vendorName: null,
      subtitle: null,
      updated: null,
      vendor: null,
    );
  }
}
