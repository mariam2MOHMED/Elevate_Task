import 'package:elevatetask/core/utils/api_services.dart';
import 'package:elevatetask/feature/data/repos/product_repo_impl.dart';
import 'package:get_it/get_it.dart';
final getit=GetIt.instance;
void setUp(){
  getit.registerSingleton<ProductRepoImpl>
    (ProductRepoImpl(apiServices: ApiServices()));
}