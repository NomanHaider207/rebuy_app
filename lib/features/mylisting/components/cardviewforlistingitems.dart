import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardViewForListingItems extends StatelessWidget {
  final Image image;
  final String title;
  final String price;
  final String viewCount;
  final String postedDate;
  final String? messageCount; // To handle optional message count
  final bool isVisible; // Determines if the eye icon is shown or hidden

  const CardViewForListingItems({
    required this.image,
    required this.title,
    required this.price,
    required this.viewCount,
    required this.postedDate,
    this.messageCount, // Optional for messages
    required this.isVisible, // Eye visibility state
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Card tapped');
      },
      child: Container(
        width: 350,
        height: 125,
        decoration: BoxDecoration(
          color: const Color(0xFFD4E4E6),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: image,
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Column(
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
                        Row(
                          children: [
                            Text(
                              'Views: $viewCount',
                              style: GoogleFonts.firaSans(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF5F5F5F),
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            if (messageCount != null)
                              Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(right: 8.0),
                                padding: const EdgeInsets.all(4.0),
                                width: 35.0,
                                height: 25.0,// Make sure it's wide enough
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.message,
                                      size: 14.0,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 2.0),
                                    Text(
                                      messageCount!,
                                      style: GoogleFonts.firaSans(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                          ],
                        ),
                        SizedBox(height: 5.0,),
                        Row(
                          children: [
                            Text(
                              price,
                              style: GoogleFonts.firaSans(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF087E8B),
                              ),
                            ),
                            const SizedBox(
                              width: 50.0,
                            ),
                            Text(
                              postedDate,
                              style: GoogleFonts.firaSans(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFFC1839F),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 12.0,
              right: 14.0,
              child: Icon(
                isVisible ? Icons.remove_red_eye : Icons.visibility_off,
                color: const Color(0xFF5F5F5F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
