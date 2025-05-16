import 'package:dartz/dartz.dart';
import 'package:elevatetask/core/errors/failure.dart';
import 'package:elevatetask/feature/data/repos/product_repo_impl.dart';

import '../models/product_model.dart';

abstract class GetProductRepo{
  Future<Either<Failure,List<ProductModel>>>getProducts();
}