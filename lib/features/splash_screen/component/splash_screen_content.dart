import 'package:flutter/material.dart';

class SplashScreenContent extends StatelessWidget {
  const SplashScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFFFF5A5F),
              Color(0xFFC1839F),
            ],
          ),
        ),
        // Center the circle and text
        child: Center(
          child: Container(
            width: 133.0,
            height: 133.0,
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                'ReBuy',
                style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: 'Dosis',
                  fontWeight: FontWeight.w800,
                  color: Colors.black, // Text color
                ),
              ),
            ),
          ),
        ),
      ),
    );;
  }
}
