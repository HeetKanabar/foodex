import 'package:flutter/material.dart';
import 'package:foodex/screens/SplashScreen.dart';
import 'package:foodex/screens/cart_screen.dart';
import 'package:foodex/screens/home_screen.dart';
import 'package:foodex/screens/product_screen.dart';
import 'package:foodex/screens/profile_screen.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash';
  static const String loginScreen = '/login';
  static const String signupScreen = '/signup';
  static const String homeScreen = '/home';
  static const String productScreen = '/productScreen';
  static const String profileScreen = '/profileScreen';
  static const String cartScreen = '/cartScreen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignUpScreen(),
    homeScreen: (context) => HomeScreen(),
    splashScreen: (context) => SplashScreen(),
    productScreen: (context) => ProductScreen(),
    profileScreen: (context) => ProfileScreen(),
    cartScreen : (context) => CartScreen(),
  };
}
