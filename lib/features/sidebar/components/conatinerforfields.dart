import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountDetailsContainer extends StatelessWidget {
  final Icon icon;
  final String title;
  final String subtitle;
  final String route;  // Route parameter

  // Constructor with required fields
  const AccountDetailsContainer({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.route, // Include route in the constructor
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);  // Use Navigator to push the route
      },
      child: Container(
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
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.firaSans(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5F5F5F),
                    ),
                  ),
                  Text(
                    subtitle,
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
      ),
    );
  }
}
