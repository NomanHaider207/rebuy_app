import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search for books, guitars and more...',
        hintStyle: GoogleFonts.cairo(
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF828282),
        ),
        suffixIcon: const Icon(
          Icons.search,
          size: 26.0,
          color: Color(0xFF999999),
        ),
        filled: true,
        fillColor: const Color(0xFFDEDEDE),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22.h),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.h),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}