import 'package:cached_network_image/cached_network_image.dart';
import 'package:elevatetask/core/utils/app_colors.dart';
import 'package:elevatetask/core/utils/styles.dart';
import 'package:elevatetask/feature/data/repos/product_repo_impl.dart';
import 'package:elevatetask/feature/presentation/view/widget/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../data/models/product_model.dart';

class ProductItem extends StatelessWidget {
  ProductModel productModel;
   ProductItem({required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border(
          bottom: BorderSide(
              color: AppColors.primary,
              width: 2.0
          ),
          top: BorderSide(
              color: AppColors.primary,
              width: 2.0
          ),
          left: BorderSide(
color: AppColors.primary,
            width: 2.0
          ),
          right:  BorderSide(
              color: AppColors.primary,
              width: 2.0
          ),
        )
      ),
      child: Column(

        children: [
          Stack(
            alignment: FractionalOffset.topRight,
            children: [
              CachedNetworkImage(imageUrl: productModel.image!,height: 120,
                width: 191,
                fit: BoxFit.fill,
              placeholder:  (context,_)=>Center(
                child: LoadingAnimationWidget.inkDrop(color: AppColors.primary,
                    size: 25),
              ),
              errorWidget: (context,_,p)=>Icon(Icons.image_not_supported_rounded,
              size: 50.0,
              color: Colors.grey,
              ),
              ),

              CircleAvatar(
                backgroundColor: AppColors.white,
                radius: 20.0,
                child: ImageIcon(
                    color: AppColors.primary,
                    AssetImage(
                    "assets/images/favourite.png")),
              )
            ],
          ),
          SizedBox(height: 12.0,),
       Padding(
         padding:  EdgeInsets.symmetric(
           horizontal: 10
         ),
         child: Column(  crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(productModel.title!,
               style: TextStyle(
                   fontSize: 18.0,fontWeight: FontWeight.w400,
                   fontFamily:GoogleFonts.poppins().fontFamily,
                   color: AppColors.txt
               ),overflow: TextOverflow.ellipsis,
               maxLines: 2,
             ),
             SizedBox(height: 12.0,),
             Text("EGP ${productModel.price} ",
               style: TextStyle(
                   fontSize: 15.0,fontWeight: FontWeight.w400,
                   fontFamily:GoogleFonts.poppins().fontFamily,
                   color: AppColors.txt
               ),
             ),
             Row(
               mainAxisAlignment:MainAxisAlignment.spaceBetween ,
               children: [
                 RatingWidget(
                   rate: productModel.rating!.rate!.toString(),
                 ),
                 CircleAvatar(
                   backgroundColor: AppColors.primary,
                   radius: 18.0,
                   child: Icon(
                     size: 20.0,
                     FontAwesomeIcons.plus ,
                     color: AppColors.white,  ),
                 )
               ],
             )
           ],
         ),
       )
        ],
      ),
    );
  }
}
