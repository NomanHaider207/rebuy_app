import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardViewForOrderItems extends StatelessWidget {
  final Image image;
  final String title;
  final String date;
  final String price;

  // Constructor with required fields
  const CardViewForOrderItems({
    required this.image,
    required this.title,
    required this.date,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle card tap action
      },
      child: Container(
        // width: 350,
        // height: 125,
        decoration: BoxDecoration(
          color: const Color(0xFFD4E4E6),
          borderRadius: BorderRadius.circular(20.0), // Rounded corners
        ),
        child: Stack(
          children: [
            // Content of the card
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0), // Rounded corners for the image
                    child: image,
                  ),
                  const SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.firaSans(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF5F5F5F),
                        ),
                      ),
                      Text(
                        date,
                        style: GoogleFonts.firaSans(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF5F5F5F),
                        ),
                      ),
                      Text(
                        price,
                        style: GoogleFonts.firaSans(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF5F5F5F),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Favorite icon at the bottom-right corner
            Positioned(
              bottom: 10.0,
              right: 16.0,
              child: GestureDetector(
                onTap: () {
                  print('Favorite icon tapped');
                },
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3C3C3C),
                    minimumSize: const Size(90, 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 6.0),
                  ),
                  onPressed: () {
                    print("Rate now button pressed");
                  },
                  child: Text(
                    "Rate now",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.firaSans(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
