import 'package:dartz/dartz.dart';
import 'package:otex_app_task/Core/errors/failure.dart';
import 'package:otex_app_task/Features/Home/data/models/catagory_mode.dart';
import 'package:otex_app_task/Features/Home/data/models/product_model.dart';



abstract class ProductRepo {
  
  Future<Either<Failure, List<ProductModel>>> fetchAllProducts();

  Future<Either<Failure, List<CategoryModel>>> fetchCategories();

  Future<Either<Failure, List<ProductModel>>> fetchProductsByCategory(int categoryId);

  Future<Either<Failure, ProductModel>> fetchProductById(int productId);
}
