// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int?,
      published: json['published'] == null
          ? null
          : DateTime.parse(json['published'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      product: json['product'] as String?,
      productName: json['productName'] as String?,
      productPackage: json['productPackage'] as String?,
      currentVersion: json['currentVersion'] as String?,
      size: json['size'] as int?,
      vendor: json['vendor'] as String?,
      vendorName: json['vendorName'] as String?,
      iconUrl: json['iconUrl'] as String?,
      subtitle: json['subtitle'] as String?,
      description: json['description'] as String?,
      donateLink: json['donateLink'] as String?,
      screenshots: (json['screenshots'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      links:
          (json['links'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'published': instance.published?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'product': instance.product,
      'productName': instance.productName,
      'productPackage': instance.productPackage,
      'currentVersion': instance.currentVersion,
      'size': instance.size,
      'vendor': instance.vendor,
      'vendorName': instance.vendorName,
      'iconUrl': instance.iconUrl,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'donateLink': instance.donateLink,
      'screenshots': instance.screenshots,
      'links': instance.links,
    };
