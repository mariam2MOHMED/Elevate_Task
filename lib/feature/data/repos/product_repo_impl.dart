import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:elevatetask/core/constants/constants.dart';
import 'package:elevatetask/core/errors/failure.dart';
import 'package:elevatetask/core/utils/api_services.dart';
import 'package:elevatetask/feature/data/repos/product_repo.dart';
import 'package:elevatetask/feature/data/repos/product_repo_impl.dart';

import '../models/product_model.dart';

class ProductRepoImpl extends ProductRepo {
   final ApiServices apiServices;

  ProductRepoImpl({required this.apiServices});
  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
  try{
 final data=await   apiServices.get(endPoint:
 AppConstants.getProducts);
 List<ProductModel> products = [];

 for (var item in data) {
   print('Parsing item: $item');
   products.add(ProductModel.fromJson
     (item ));
 }
return right(products);
  }catch(error){
if(error is DioException){
  return left(ServerFailure.fromDioError(error));
}else{
  return left(ServerFailure(error.toString() ));
}
  }
  }
}