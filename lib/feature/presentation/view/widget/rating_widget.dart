import 'package:elevatetask/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingWidget extends StatelessWidget {
  final String rate;
   RatingWidget({required this.rate});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Review",  style: TextStyle(
            fontSize: 15.0,fontWeight: FontWeight.w400,
            fontFamily:GoogleFonts.poppins().fontFamily,
            color: AppColors.txt
        )),
        SizedBox(width: 7.0,),
        Text(rate,  style: TextStyle(
            fontSize: 15.0,fontWeight: FontWeight.w400,
            fontFamily:GoogleFonts.poppins().fontFamily,
            color: AppColors.txt
        )),
        SizedBox(width: 5.0,),
        Icon(Icons.star,color: AppColors.gold,size: 22.0,)
      ],
    );
  }
}
