import 'package:flutter/material.dart';
import 'package:foodex/screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';

class AppRoutes {
  static const String loginScreen = '/';
  static const String signupScreen = '/signup';
  static const String homeScreen = '/home';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignUpScreen(),
    homeScreen: (context) => HomeScreen(),
  };
}
