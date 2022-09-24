import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
    required String? id,
    required String? published,
    required DateTime? updated,
    required String? product,
    required String? productName,
    required String? productPackage,
    required String? vendor,
    required String? vendorName,
    required String? iconUrl,
    required String? subtitle,
    required String? description,
    required List<String?>? screenshots,
    required List<String?>? links,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
