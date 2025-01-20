import 'package:flutter/cupertino.dart';
import 'package:rebuy/features/camera/view/camera.dart';
import 'package:rebuy/features/explore/view/explore.dart';
import 'package:rebuy/features/messages/view/chat.dart';
import 'package:rebuy/features/mylikeditems/view/mylikeditems.dart';
import 'package:rebuy/features/mylisting/view/mylisting.dart';
import 'package:rebuy/features/myorders/view/myorders.dart';
import 'package:rebuy/features/splash_screen/view/splash_screen.dart';
import 'package:rebuy/features/auth/presentation/login/view/login_screen.dart';
import 'package:rebuy/features/auth/presentation/signup/view/signup_screen.dart';

import '../features/home/view/home.dart';
import '../features/myaccount/view/myaccount.dart';
import '../features/sidebar/view/side_bar.dart';

class Routes {
  // Define route names as constants
  static const String splash = '/splash_screen';
  static const String login = '/auth/presentation/login';
  static const String signUp = '/auth/presentation/signup';
  static const String home = '/home';
  static const String sideBar = '/sidebar';
  static const String myAccount = '/myaccount';
  static const String likedItems = '/mylikeditems';
  static const String myOrders = '/myorders';
  static const String myListing = '/mylisting';
  static const String cameraScreen = '/camera';
  static const String chatScreen = '/messages';
  static const String exploreScreen = '/explore';




  // Return a Map of routes
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splash: (context) => SplashScreen(),
      login: (context) => LoginScreen(),
      signUp: (context) => SignupScreen(),
      home: (context)=> Home(),
      sideBar: (context) => SideBar(),
      myAccount:(context) => MyAccount(),
      likedItems: (context) => MyLikedItems(),
      myOrders: (context) => MyOrders(),
      myListing: (context) => MyListing(),
      chatScreen: (context) => ChatScreen(),
      cameraScreen: (context) => CameraScreen(),
      exploreScreen: (context) => Explore(),

    };
  }
}
