import 'package:bloc/bloc.dart';
import 'package:elevatetask/feature/data/repos/product_repo_impl.dart';
import 'package:meta/meta.dart';
import '../../../data/models/product_model.dart';
import 'package:elevatetask/feature/data/repos/product_repo_impl.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.productRepoImpl) :
        super(ProductInitial());
  final ProductRepoImpl productRepoImpl;
Future<void> getProducts()async{
  emit(ProductLoading());
  final result=await productRepoImpl.getProducts();
  result.fold((l) {
    print("the error is ${l.error}");
    emit(ProductError(error: l.error));
  }, (products) {
  emit(ProductSucess(products: products));
  });
}
}
