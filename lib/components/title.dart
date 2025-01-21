import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageTitle extends StatelessWidget {
  final String text; // Required parameter

  // Constructor to accept a text parameter
  const PageTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text, // Use the provided text parameter
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 48.sp,
        fontWeight: FontWeight.w800,
        fontFamily: 'Dosis',
        color: Color(0xFF3C3C3C),
      ),
    );
  }
}
