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
          radius: 35.r,
          backgroundImage: NetworkImage(imageUrl),
        ),
        SizedBox(width: 15.w),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFF5A5F),
                      ),
                      overflow: TextOverflow.ellipsis,  // Adds the ellipsis (...) when the text overflows
                      maxLines: 1,
                    ),
                    Text(
                      welcomeText,
                      style: GoogleFonts.firaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xFF979797),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onHamburgerTap,
                child: Icon(
                  (Icons.close),
                    size: 40.0,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}