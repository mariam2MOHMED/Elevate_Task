import 'package:elevatetask/core/di/service_lactor.dart';
import 'package:elevatetask/core/utils/app_colors.dart';
import 'package:elevatetask/feature/data/repos/product_repo_impl.dart';
import 'package:elevatetask/feature/presentation/view/widget/product_item.dart';
import 'package:elevatetask/feature/presentation/view_model/cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/error_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetProductCubit
        (getit.get<GetProductRepoImpl>())..getProducts(),
      child: Scaffold(
      body: Padding(
      padding: EdgeInsets.all(15.0),
    child: BlocBuilder<GetProductCubit,ProductState>(
      builder: (context,state) {
      if(state is ProductSucess){
        return GridView.builder(
            itemCount: state.products.length,
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 10.8 / 16),
            itemBuilder: (context, index) {
              return ProductItem(
                productModel:state.products[index],
              );
            });
      }else if(state is ProductError){
        return ErrorToGetWidget();
      }else if(state is ProductLoading){
        return Center(child: CircularProgressIndicator(
          color: AppColors.primary,
        ));
      }
      else{
        return Center();
      }
      }
    ),
    ),
    ));
  }
}
