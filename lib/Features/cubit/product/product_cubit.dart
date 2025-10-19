import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/Features/Home/data/repos/product_repo_impl.dart';
import 'package:otex_app_task/Features/Home/domain/repos/product_repo.dart';
import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepo _repo;

  ProductCubit(this._repo,) : super(ProductInitial());

  Future<void> fetchAllProducts() async {
    emit(ProductLoading());
    final result = await _repo.fetchAllProducts();
    result.fold(
      (failure) => emit(ProductError(failure.message)),
      (products) => emit(ProductLoaded(products)),
    );
  }

  Future<void> fetchCategories() async {
    emit(ProductLoading());
    final result = await _repo.fetchCategories();
    result.fold(
      (failure) => emit(ProductError(failure.message)),
      (categories) => emit(CategoryLoaded(categories)),
    );
  }

  Future<void> fetchProductsByCategory(int categoryId) async {
    emit(ProductLoading());
    final result = await _repo.fetchProductsByCategory(categoryId);
    result.fold(
      (failure) => emit(ProductError(failure.message)),
      (products) => emit(ProductLoaded(products)),
    );
  }


  Future<void> fetchProductById(int productId) async {
    emit(ProductLoading());
    final result = await _repo.fetchProductById(productId);
    result.fold(
      (failure) => emit(ProductError(failure.message)),
      (product) => emit(ProductLoaded([product])),
    );
  }
}
