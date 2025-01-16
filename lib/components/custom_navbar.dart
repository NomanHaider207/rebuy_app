import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/assets.dart';

class CustomNavBarWithSvg extends StatefulWidget {
  @override
  _CustomNavBarWithSvgState createState() => _CustomNavBarWithSvgState();
}

class _CustomNavBarWithSvgState extends State<CustomNavBarWithSvg> {
  int currentIndex = 0;

  final List<String> svgPaths = [
    Assets.homeIcon,
    Assets.needleIcon,
    Assets.cameraIcon,
    Assets.favourite,
    Assets.messagesIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Allows the center button to overflow
      children: [
        // Main navigation bar container
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(38.0), // Navbar rounded corners
            child: Container(
              color: const Color(0xFF3C3C3C), // Navbar background color
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Left items
                  ...List.generate(2, (index) {
                    return _buildNavBarItem(index);
                  }),
                  // Placeholder for middle button
                  const SizedBox(width: 66),
                  // Right items
                  ...List.generate(2, (index) {
                    return _buildNavBarItem(index + 3);
                  }),
                ],
              ),
            ),
          ),
        ),

        // Middle button
        Positioned.fill(
          top: 20,
          // Moves the button up
          child: Align(
            alignment: Alignment.topCenter,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 2; // The camera icon is at index 2
                });
              },
              child: Container(
                width: 48,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40), // Full circle
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 6.0),
                  child: SvgPicture.asset(
                    svgPaths[2],
                    color: Color(0xFF3C3C3C),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Builds a single navigation bar item
  Widget _buildNavBarItem(int index) {
    final isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: isSelected ? 66 : 30, // Ellipse size (selected/unselected)
        height: isSelected ? 41 : 30,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF087E8B) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center, // Center the content
        child: SvgPicture.asset(
          svgPaths[index],
          color: isSelected ? Colors.white : Colors.grey,
          width: 20, // SVG icon size
          height: 22, // SVG icon size
        ),
      ),
    );
  }
}
