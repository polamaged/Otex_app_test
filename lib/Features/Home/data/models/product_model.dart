import 'dart:developer';
import 'package:otex_app_task/Features/Home/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    required super.productId,
    required super.productName,
    required super.productImageURL,
    required super.brandImageURL,
    required super.price,
    required super.discountPrice,
    required super.categoryId,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    // Log the raw map
    log("Mapping ProductModel from map: $map");

    return ProductModel(
      productId: map['ProductId'] != null ? map['ProductId'] as int : 0,
      productName: map['ProductName']?.toString() ?? '',
      productImageURL: map['ProductImageURL']?.toString() ?? '',
      brandImageURL: map['BrandImageURL']?.toString() ?? '',
      price: (map['Price'] as num?)?.toDouble() ?? 0.0,
      discountPrice: (map['DiscountPrice'] as num?)?.toInt() ?? 0,
      categoryId: map['CategoryId'] != null ? map['CategoryId'] as int : 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ProductId': productId,
      'ProductName': productName,
      'ProductImageURL': productImageURL,
      'BrandImageURL': brandImageURL,
      'Price': price,
      'DiscountPrice': discountPrice,
      'CategoryId': categoryId,
    };
  }
}
