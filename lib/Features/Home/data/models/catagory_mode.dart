import 'dart:developer';

class CategoryModel {
  final int categoryId;
  final String categoryName;

  CategoryModel({
    required this.categoryId,
    required this.categoryName,
  });

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    // Logging
    log("Mapping CategoryModel from map: $map");

    return CategoryModel(
      categoryId: map['CategoryId'] != null ? map['CategoryId'] as int : 0,
      categoryName: map['CategoryName']?.toString() ?? '',
    );
  }
}
