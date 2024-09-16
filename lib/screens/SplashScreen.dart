import 'package:flutter/material.dart';
import 'package:foodex/routes/app_routes.dart';
import '../routes/app_routes.dart'; // Ensure this file has your routes setup

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent, // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image or Icon representing the logo or characters
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: Icon(Icons.restaurant_menu, color: Colors.redAccent, size: 40), // Replace with logo if available
            ),
            // Image.asset("shafes.png"),
            SizedBox(height: 20),
            // Food for Everyone Text
            Text(
              'Food for Everyone',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 50),
            // Get Started Button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.loginScreen); // Replace with actual route
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.white, // Button color
              ),
              child: Text(
                'Get started',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
