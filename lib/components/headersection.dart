import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/assets.dart';
import '../constants/routes.dart';

class HeaderSectionForTitles extends StatefulWidget {
  final String? route;
  final String title;

  const HeaderSectionForTitles({Key? key, this.route, required this.title})
      : super(key: key);

  @override
  State<HeaderSectionForTitles> createState() => _HeaderSectionForTitlesState();
}

class _HeaderSectionForTitlesState extends State<HeaderSectionForTitles> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30.h),
      child: Row(
        children: [
          // Back Button
          GestureDetector(
            onTap: () {
              if (widget.route != null) {
                Navigator.of(context).pop();
              }
            },
            child: SvgPicture.asset(
              Assets.backButton,
              fit: BoxFit.cover,
              width: 40.w,
              height: 40.h,
            ),
          ),

          // Small gap between back button and title
          SizedBox(width: 15.w),

          // Title
          Text(
            widget.title,
            style: GoogleFonts.firaSans(
              fontSize: 32.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF3C3C3C),
            ),
          ),

          // Spacer pushes the hamburger to the far-right
          const Spacer(),

          // Hamburger Icon
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.sideBar);
            },
            child: SvgPicture.asset(
              Assets.hamburger,
              width: 23.w,
              height: 23.h,
            ),
          ),
        ],
      ),
    );
  }
}
