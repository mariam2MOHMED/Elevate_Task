import 'dart:ui';

import 'package:elevatetask/core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles{
  static  TextStyle? style18=
  TextStyle(
    fontSize: 18.0,fontWeight: FontWeight.w400,
    fontFamily:GoogleFonts.poppins().fontFamily,
    color: AppColors.txt
  );
  static  TextStyle style12=
  TextStyle(
      fontSize: 12.0,fontWeight: FontWeight.w400,
      fontFamily:GoogleFonts.poppins().fontFamily,
      color: AppColors.txt
  );
}