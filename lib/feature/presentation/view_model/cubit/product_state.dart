part of 'product_cubit.dart';

abstract class ProductState {}

 class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductSucess extends ProductState {
final List<ProductModel>products;

  ProductSucess({required this.products});
}

class ProductError extends ProductState {
 final String error;

  ProductError({required this.error});
}
