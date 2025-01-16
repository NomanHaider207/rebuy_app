import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Divider(
          height: 20.0,
          color: Colors.black,
        ),
        Container(
          color: Colors.white, // This ensures the divider line is hidden behind the "or" text
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'or',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
