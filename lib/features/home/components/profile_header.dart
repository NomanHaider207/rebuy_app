import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          radius: 45,
          backgroundImage: NetworkImage(imageUrl),
        ),
        const SizedBox(width: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 210.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    softWrap: true,
                    style: GoogleFonts.firaSans(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700,
                    ),
                    overflow: TextOverflow.ellipsis,  // Adds the ellipsis (...) when the text overflows
                    maxLines: 1,
                  ),
                  Text(
                    welcomeText,
                    style: GoogleFonts.firaSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFFF5A5F),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 25.0,),
            GestureDetector(
              onTap: onHamburgerTap,
              child: SvgPicture.asset(
                Assets.hamburger,
                width: 33.0,
                height: 33.0,
              ),
            ),
          ],
        )
      ],
    );
  }
}