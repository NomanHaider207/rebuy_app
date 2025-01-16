import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/routes.dart';


class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'ReBuy',
          style: TextStyle(
            fontSize: 32.0,
            fontFamily: 'Dosis',
            fontWeight: FontWeight.w800,
            color: Color(0xFF3C3C3C),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context,Routes.home);
          },
          child: Icon(
            Icons.close,
            size: 60.0,
            color: Color(0xFF555555),
          ),
        )
      ],
    );
  }
}
