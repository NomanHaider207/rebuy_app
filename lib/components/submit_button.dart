import 'package:flutter/material.dart';
import 'package:rebuy/constants/routes.dart';

class SubmitButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const SubmitButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Uses the passed method
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
            buttonText, // No need to use interpolation for this
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
