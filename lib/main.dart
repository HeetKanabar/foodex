import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange, // Define your primary color here
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.orange, // For buttons, app bars, etc.
          secondary: Colors.orangeAccent, // For accents, if needed
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange, // Default button color
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.orange, // Color for text buttons like "Forgot passcode?"
          ),
        ),
      ),
      initialRoute: AppRoutes.homeScreen,
      routes: AppRoutes.routes,
    );
  }
}
