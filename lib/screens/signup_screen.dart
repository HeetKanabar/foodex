import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
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
                  onTap: () {
                    Navigator.pop(context); // Back to login
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  child: Text(
                    'Sign-up',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
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
            CustomTextField(
              hintText: 'Confirm Password',
              icon: Icons.lock_outline,
              isPassword: true,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Handle sign-up action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
              ),
              child: Text('Sign-up',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
