import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountTitleHeadrer extends StatelessWidget {
  final String title;

  const MyAccountTitleHeadrer({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.firaSans(
            fontWeight: FontWeight.w700,
            fontSize: 24.0,
            color: const Color(0xFF3C3C3C),
          ),
        ),
      ],
    );
  }
}