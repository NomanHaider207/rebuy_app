import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
      padding: EdgeInsets.only(bottom: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              if (widget.route != null) {
                Navigator.of(context).pop();
              }
            },
            child: SvgPicture.asset(
              Assets.backButton,
              fit: BoxFit.cover,
              width: 46.0,
              height: 46.0,
            ),
          ),
          Text(
            widget.title,
            style: GoogleFonts.firaSans(
              fontSize: 32.0,
              fontWeight: FontWeight.w700,
              color: Color(0xFF3C3C3C),
            ),
          ),
          SizedBox(
            width: 60.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.sideBar);
            },
            child: SvgPicture.asset(
              Assets.hamburger,
              width: 33.0,
              height: 33.0,
            ),
          ),
        ],
      ),
    );
  }
}
