// To parse this JSON data, do
//
//     final getAllProduct = getAllProductFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

GetAllProduct getAllProductFromJson(String str) =>
    GetAllProduct.fromJson(json.decode(str));

String getAllProductToJson(GetAllProduct data) => json.encode(data.toJson());

@freezed
class GetAllProduct with _$GetAllProduct {
  const factory GetAllProduct({
    @JsonKey(name: "products") required List<Product> products,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "skip") required int skip,
    @JsonKey(name: "limit") required int limit,
  }) = _GetAllProduct;

  factory GetAllProduct.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "price") required int price,
    @JsonKey(name: "discountPercentage") required double discountPercentage,
    @JsonKey(name: "rating") required double rating,
    @JsonKey(name: "stock") required int stock,
    @JsonKey(name: "brand") required String brand,
    @JsonKey(name: "category") required String category,
    @JsonKey(name: "thumbnail") required String thumbnail,
    @JsonKey(name: "images") required List<String> images,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
