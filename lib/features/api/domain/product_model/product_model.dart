import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  const Product._();

  const factory Product({
    required int? id,
    required DateTime?
        published, // this has been changed. change the DATA in json in the api to match the type.
    required DateTime? updated,
    required String? product,
    required String? productName,
    required String? productPackage,
    required String? currentVersion,
    required int? size,
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
      updated: null,
      product: null,
      productName: null,
      productPackage: null,
      currentVersion: null,
      size: null,
      vendor: null,
      vendorName: null,
      iconUrl: null,
      subtitle: null,
      description: null,
      donateLink: null,
      links: null,
      screenshots: null,
    );
  }
}
