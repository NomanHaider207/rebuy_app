import 'package:flutter/material.dart';
import 'package:rebuy/constants/routes.dart';


class SubmitButton extends StatelessWidget {
  final String buttonText;

  const SubmitButton({Key? key, required this.buttonText}) : super(key: key);

  @override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushReplacementNamed(context, Routes.home);
    },
    child: Container(
      width: double.infinity,
      height: 56.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFF5A5F), Color(0xFFC1839F)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Text(
          '$buttonText',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
}