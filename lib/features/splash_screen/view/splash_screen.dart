import 'package:flutter/material.dart';
import 'package:rebuy/constants/routes/routes.dart';
import 'package:rebuy/features/splash_screen/component/splash_screen_content.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, Routes.login);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SplashScreenContent();
  }
}
