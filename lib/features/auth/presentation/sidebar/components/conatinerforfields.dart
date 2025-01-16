// AccountDetailsContainer widget with parameters for icon, title, and subtitle
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountDetailsContainer extends StatelessWidget {
  final Icon icon;            // Icon parameter
  final String title;         // Title parameter
  final String subtitle;      // Subtitle parameter

  // Constructor with required fields
  const AccountDetailsContainer({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 93.0,
      decoration: BoxDecoration(
        color: Color(0xFFD4E4E6),
        borderRadius: BorderRadius.circular(30.0), // Rounded corners
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
           icon,
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,  // Using the passed title here
                  style: GoogleFonts.firaSans(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5F5F5F),
                  ),
                ),
                Text(
                  subtitle,  // Using the passed subtitle here
                  style: GoogleFonts.firaSans(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF5F5F5F),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}