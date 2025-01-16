import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  final String descriptionText;
  final String buttonText;
  final String route;

  const FooterSection({Key? key, required this.descriptionText, required this.buttonText, required this.route}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$descriptionText",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color: Color(0xFF828282),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (route != null) {
                Navigator.pushReplacementNamed(context, route);
              }
            },
            child: Text(
              '$buttonText',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF5A5F),
              ),
            ),
          ),
        ],
      ),
    );
  }
}