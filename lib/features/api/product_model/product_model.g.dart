// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as String?,
      published: json['published'] as String?,
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      product: json['product'] as String?,
      productName: json['productName'] as String?,
      productPackage: json['productPackage'] as String?,
      vendor: json['vendor'] as String?,
      vendorName: json['vendorName'] as String?,
      iconUrl: json['iconUrl'] as String?,
      subtitle: json['subtitle'] as String?,
      description: json['description'] as String?,
      screenshots: (json['screenshots'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      links:
          (json['links'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'published': instance.published,
      'updated': instance.updated?.toIso8601String(),
      'product': instance.product,
      'productName': instance.productName,
      'productPackage': instance.productPackage,
      'vendor': instance.vendor,
      'vendorName': instance.vendorName,
      'iconUrl': instance.iconUrl,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'screenshots': instance.screenshots,
      'links': instance.links,
    };
