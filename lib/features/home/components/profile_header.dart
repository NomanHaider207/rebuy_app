import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants/assets.dart';

class ProfileHeader extends StatelessWidget {
  final String imageUrl;
  final String username;
  final String welcomeText;
  final VoidCallback onHamburgerTap;

  const ProfileHeader({
    required this.imageUrl,
    required this.username,
    required this.welcomeText,
    required this.onHamburgerTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 45.r,
          backgroundImage: NetworkImage(imageUrl),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      softWrap: true,
                      style: GoogleFonts.firaSans(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,  // Adds the ellipsis (...) when the text overflows
                      maxLines: 1,
                    ),
                    Text(
                      welcomeText,
                      style: GoogleFonts.firaSans(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFFF5A5F),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 0,
                child: GestureDetector(
                  onTap: onHamburgerTap,
                  child: SvgPicture.asset(
                    Assets.hamburger,
                    width: 23.w,
                    height: 23.h,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}