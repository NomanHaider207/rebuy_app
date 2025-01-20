import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'constants/routes.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensures Flutter environment is ready
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Links platform-specific config
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReBuy App',
      initialRoute: Routes.splash,
      routes: Routes.getRoutes(),
    );
  }
}
