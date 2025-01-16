import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;
  final bool isFavorite;

  const ProductCard({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 268.0, // Width of the card
      height: 246.0, // Height to match the requirement
      margin: const EdgeInsets.only(right: 10.0), // Space between the items
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset(
                  imageUrl,
                  height: 185.0,
                  width: 268.0,
                  fit: BoxFit.cover,
                ),
                if (isFavorite)
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Icon(Icons.favorite, color: Colors.red),
                  ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          title,
                          style: GoogleFonts.firaSans(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis, // Ensures text does not overflow
                        ),
                        const SizedBox(height: 2.0),  // Adjust spacing
                        // Subtitle
                        Text(
                          subtitle,
                          style: GoogleFonts.firaSans(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFC1839F),
                          ),
                          overflow: TextOverflow.ellipsis, // For subtitle to avoid overflow
                        ),
                      ],
                    ),
                  ),
                  // Price
                  Text(
                    price,
                    style: GoogleFonts.firaSans(
                      fontSize: 24.0, // Slightly reduced font size to avoid overflow
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
