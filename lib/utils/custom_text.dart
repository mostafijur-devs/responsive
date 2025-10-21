
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CustomText(String text,{
  Color color = Colors.black,
  double fontSize = 17.0,
  double letterSpacing = 1,
  FontWeight fontweight = FontWeight.w400


}){
  return Padding(
    padding: const EdgeInsets.all(2),
    child: Text(text,style: GoogleFonts.tenorSans(
      letterSpacing: letterSpacing.sp,
      color: color,
      fontSize: fontSize,
      fontWeight:fontweight,
      // fontStyle: FontStyle

    ),),
  );
}