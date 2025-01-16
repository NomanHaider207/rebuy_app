import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebuy/constants/assets.dart';
import 'package:rebuy/constants/routes.dart';

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
            // If route is provided, navigate to it; otherwise, do nothing
            if (route != null) {
              Navigator.pushReplacementNamed(context, route!);
            }
          },
          child: SvgPicture.asset(
            Assets.backButton,
            fit: BoxFit.cover,
            width: 46.0,
            height: 46.0,
          ),
        ),
        Text(
          'ReBuy',
          style: TextStyle(
            fontSize: 32.0,
            fontFamily: 'Dosis',
            fontWeight: FontWeight.w800,
            color: Color(0xFF3C3C3C),
          ),
        ),
      ],
    );
  }
}
