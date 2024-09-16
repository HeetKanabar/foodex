import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import '../routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo (can be replaced with actual asset image)
            Icon(Icons.restaurant_menu, size: 100, color: Colors.orange),
            SizedBox(height: 16),
            // Login and Signup Tabs
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.signupScreen);
                  },
                  child: Text(
                    'Sign-up',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            CustomTextField(
              hintText: 'Email address',
              icon: Icons.email_outlined,
            ),
            SizedBox(height: 16),
            CustomTextField(
              hintText: 'Password',
              icon: Icons.lock_outline,
              isPassword: true,
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Text(
                  'Forgot passcode?',
                  style: TextStyle(color: Colors.orange),
                ),
                onTap: () {
                  // Handle forgot password action
                },
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Handle login action
                Navigator.pushNamed(context, AppRoutes.homeScreen);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
              ),
              child: Text('Login',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
