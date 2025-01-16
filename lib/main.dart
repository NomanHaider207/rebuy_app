import 'package:flutter/material.dart';
import 'constants/routes/routes.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ReBuy App',
        initialRoute: Routes.splash,
        routes: Routes.getRoutes(),
    );
  }
}
