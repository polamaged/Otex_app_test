import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:otex_app_task/Core/errors/failure.dart';
import 'package:otex_app_task/Core/services/database_service.dart';
import 'package:otex_app_task/Features/Home/domain/repos/product_repo.dart';
import '../models/product_model.dart';
import '../models/catagory_mode.dart';

class ProductRepoImpl implements ProductRepo {
  final DatabaseService _db = DatabaseService.instance;

  @override
  Future<Either<Failure, List<ProductModel>>> fetchAllProducts() async {
    log("🟢 fetchAllProducts called");
    try {
      final data = await _db.getData('Product');
      for (var row in data) log("Raw product row: $row");

      final products = data.map((e) => ProductModel.fromMap(e)).toList();
      log("Parsed products: $products");
      return Right(products);
    } catch (e, st) {
      log("❌ Error in fetchAllProducts: $e\n$st");
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> fetchCategories() async {
    log("🟢 fetchCategories called");
    try {
      final data = await _db.getData('Category');
      for (var row in data) log("Raw category row: $row");

      final categories = data.map((e) => CategoryModel.fromMap(e)).toList();
      log("Parsed categories: $categories");
      return Right(categories);
    } catch (e, st) {
      log("❌ Error in fetchCategories: $e\n$st");
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> fetchProductsByCategory(int categoryId) async {
    log("🟢 fetchProductsByCategory called for categoryId: $categoryId");
    try {
      final data = await _db.getProductsByCategory(categoryId);
      for (var row in data) log("Raw product row: $row");

      final products = data.map((e) => ProductModel.fromMap(e)).toList();
      log("Parsed products: $products");
      return Right(products);
    } catch (e, st) {
      log("❌ Error in fetchProductsByCategory: $e\n$st");
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ProductModel>> fetchProductById(int productId) async {
    log("🟢 fetchProductById called for productId: $productId");
    try {
      final data = await _db.getProductById(productId);

      if (data == null) {
        log("❌ Product not found for id $productId");
        return Left(ServerFailure("Product not found for id $productId"));
      }

      log("Raw product data: $data");
      final product = ProductModel.fromMap(data);
      log("Parsed product: $product");
      return Right(product);
    } catch (e, st) {
      log("❌ Error in fetchProductById: $e\n$st");
      return Left(ServerFailure(e.toString()));
    }
  }
}
