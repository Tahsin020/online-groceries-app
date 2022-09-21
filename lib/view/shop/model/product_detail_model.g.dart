// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) =>
    ProductDetail(
      id: json['id'] as int?,
      productName: json['productName'] as String?,
      productDetail: json['productDetail'] as String?,
      categoryId: json['categoryId'] == null
          ? null
          : CategoryId.fromJson(json['categoryId'] as Map<String, dynamic>),
      brandId: json['brandId'] == null
          ? null
          : BrandId.fromJson(json['brandId'] as Map<String, dynamic>),
      stockQuantity: json['stockQuantity'] as int?,
      unitPrice: (json['unitPrice'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$ProductDetailToJson(ProductDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productName': instance.productName,
      'productDetail': instance.productDetail,
      'categoryId': instance.categoryId,
      'brandId': instance.brandId,
      'stockQuantity': instance.stockQuantity,
      'unitPrice': instance.unitPrice,
      'imageUrl': instance.imageUrl,
      'status': instance.status,
    };

CategoryId _$CategoryIdFromJson(Map<String, dynamic> json) => CategoryId(
      id: json['id'] as int?,
      categoryName: json['categoryName'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$CategoryIdToJson(CategoryId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryName': instance.categoryName,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'status': instance.status,
    };

BrandId _$BrandIdFromJson(Map<String, dynamic> json) => BrandId(
      id: json['id'] as int?,
      brandName: json['brandName'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$BrandIdToJson(BrandId instance) => <String, dynamic>{
      'id': instance.id,
      'brandName': instance.brandName,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'status': instance.status,
    };
