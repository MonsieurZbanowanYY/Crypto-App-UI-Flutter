import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

Padding chartSortWidget(String str, bool isSelected, ThemeData themeData) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 1.w),
    child: Container(
      decoration: BoxDecoration(
          color: isSelected
              ? themeData.secondaryHeaderColor
              : themeData.primaryColor.withOpacity(0.05),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 1.h,
          horizontal: 5.w,
        ),
        child: Center(
          child: Text(
            str,
            style: GoogleFonts.lato(
              color: isSelected
                  ? Colors.white
                  : themeData.primaryColor.withOpacity(0.7),
              fontWeight: FontWeight.bold,
              fontSize: 13.sp,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    ),
  );
}
