import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String actionText;
  final VoidCallback onActionTap;

  const SectionHeader({
    required this.title,
    required this.actionText,
    required this.onActionTap,
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
        GestureDetector(
          onTap: onActionTap,
          child: Text(
            actionText,
            style: GoogleFonts.firaSans(
              fontWeight: FontWeight.w600,
              fontSize: 14.0,
              color: const Color(0xFF898989),
            ),
          ),
        ),
      ],
    );
  }
}