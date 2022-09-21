import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'product_detail_model.g.dart';

@JsonSerializable()
class ProductDetail extends INetworkModel {
  int? id;
  String? productName;
  String? productDetail;
  CategoryId? categoryId;
  BrandId? brandId;
  int? stockQuantity;
  double? unitPrice;
  String? imageUrl;
  bool? status;

  ProductDetail(
      {this.id,
      this.productName,
      this.productDetail,
      this.categoryId,
      this.brandId,
      this.stockQuantity,
      this.unitPrice,
      this.imageUrl,
      this.status});

  factory ProductDetail.fromJson(Map<String, dynamic> json) {
    return _$ProductDetailFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ProductDetailToJson(this);
  }

  @override
  fromJson(Map<String, dynamic> json) {
    return _$ProductDetailFromJson(json);
  }
}

@JsonSerializable()
class CategoryId  extends INetworkModel{
  int? id;
  String? categoryName;
  String? description;
  String? imageUrl;
  bool? status;

  CategoryId({this.id, this.categoryName, this.description, this.imageUrl, this.status});

  factory CategoryId.fromJson(Map<String, dynamic> json) {
    return _$CategoryIdFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CategoryIdToJson(this);
  }
  
  @override
  fromJson(Map<String, dynamic> json) {
    return _$CategoryIdFromJson(json);
  }
}

@JsonSerializable()
class BrandId extends INetworkModel{
  int? id;
  String? brandName;
  String? description;
  String? imageUrl;
  bool? status;

  BrandId({this.id, this.brandName, this.description, this.imageUrl, this.status});

  factory BrandId.fromJson(Map<String, dynamic> json) {
    return _$BrandIdFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BrandIdToJson(this);
  }
  
  @override
  fromJson(Map<String, dynamic> json) {
        return _$BrandIdFromJson(json);
  }
}
