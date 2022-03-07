import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

Padding actionWidget(
  IconData actionIcon,
  String actionStr,
  ThemeData themeData,
) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 2.h),
    child: Column(
      children: [
        InkWell(
          onTap: () {}, //TODO: add onTap action
          child: Container(
            decoration: BoxDecoration(
              color: themeData.primaryColor.withOpacity(0.05),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                actionIcon,
                size: 20.sp,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 1.5.h),
          child: Text(
            actionStr,
            style: GoogleFonts.poppins(
              color: themeData.primaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 13.sp,
            ),
          ),
        ),
      ],
    ),
  );
}
