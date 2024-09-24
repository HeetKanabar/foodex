import 'package:flutter/material.dart';

class UpdateButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  UpdateButtonWidget({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent, // Button color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 16),
        ),
        child: Text(
          'Update',
          style: TextStyle(fontSize: 16,color: Colors.white),
        ),
      ),
    );
  }
}
