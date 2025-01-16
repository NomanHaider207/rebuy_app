import 'package:flutter/cupertino.dart';
import 'package:rebuy/features/splash_screen/view/splash_screen.dart';
import 'package:rebuy/features/auth/presentation/login/view/login_screen.dart';
import 'package:rebuy/features/auth/presentation/signup/view/signup_screen.dart';


import '../features/home/view/home.dart';
import '../features/myaccount/view/myaccount.dart';
import '../features/sidebar/view/side_bar.dart';// Adjust this path if necessary

class Routes {
  // Define route names as constants
  static const String splash = '/splash_screen';
  static const String login = '/auth/presentation/login';
  static const String signUp = '/auth/presentation/signup';
  static const String home = '/home';
  static const String sideBar = '/sidebar';
  static const String myAccount = '/myaccount';




  // Return a Map of routes
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splash: (context) => SplashScreen(),
      login: (context) => LoginScreen(),
      signUp: (context) => SignupScreen(),
      home: (context)=> Home(),
      sideBar: (context) => SideBar(),
      myAccount:(context) => MyAccount(),

    };
  }
}
