import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/assets.dart';
import '../constants/routes.dart'; // Import routes file

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

  final List<String> routes = [
    Routes.home,       // Home Screen route
    Routes.exploreScreen,
    Routes.cameraScreen,
    Routes.likedItems,
    Routes.chatScreen,// Discover/Explore screen route
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Main navigation bar container
        Padding(
          padding: EdgeInsets.all(15.h),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(38.r), // Navbar rounded corners
            child: Container(
              color: const Color(0xFF3C3C3C), // Navbar background color
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(2, (index) {
                    return _buildNavBarItem(index);
                  }),
                  SizedBox(width: 66.w),
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
          top: 15 .h,
          child: Align(
            alignment: Alignment.topCenter,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
                Navigator.pushNamed(context, routes[2]);
              },
              child: Container(
                width: 48.w,
                height: 48.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.r), // Full circle
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 6.h),
                  child: SvgPicture.asset(
                    svgPaths[2],
                    color: const Color(0xFF3C3C3C),
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
        Navigator.pushNamed(context, routes[index]); // Navigate to route
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: isSelected ? 56.w : 20.w,
        height: isSelected ? 31.h : 20.h,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF087E8B) : Colors.transparent,
          borderRadius: BorderRadius.circular(20.r),
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          svgPaths[index],
          color: isSelected ? Colors.white : Colors.grey,
          width: 20.w,
          height: 22.h,
        ),
      ),
    );
  }
}
