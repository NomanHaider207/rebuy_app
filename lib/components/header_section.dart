import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebuy/constants/assets.dart';


class HeaderSection extends StatelessWidget {
  final String? route; // Optional route parameter

  const HeaderSection({Key? key, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            if (route != null) {
              Navigator.pushReplacementNamed(context, route!);
            }
          },
          child: SvgPicture.asset(
            Assets.backButton,
            fit: BoxFit.cover,
            width: 46.w,
            height: 46.h,
          ),
        ),
        Text(
          'ReBuy',
          style: TextStyle(
            fontSize: 32.sp,
            fontFamily: 'Dosis',
            fontWeight: FontWeight.w800,
            color: Color(0xFF3C3C3C),
          ),
        ),
      ],
    );
  }
}
