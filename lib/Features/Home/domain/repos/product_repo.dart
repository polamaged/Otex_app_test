import 'package:dartz/dartz.dart';
import 'package:otex_app_task/Core/errors/failure.dart';
import 'package:otex_app_task/Features/Home/data/models/catagory_mode.dart';
import 'package:otex_app_task/Features/Home/data/models/product_model.dart';



abstract class ProductRepo {
  // جلب كل المنتجات
  Future<Either<Failure, List<ProductModel>>> fetchAllProducts();

  // جلب التصنيفات
  Future<Either<Failure, List<CategoryModel>>> fetchCategories();

  // جلب المنتجات حسب الكاتيجوري
  Future<Either<Failure, List<ProductModel>>> fetchProductsByCategory(int categoryId);

  // جلب منتج محدد حسب id
  Future<Either<Failure, ProductModel>> fetchProductById(int productId);
}
