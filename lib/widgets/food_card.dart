import 'package:flutter/material.dart';
import 'package:foodex/routes/app_routes.dart';
import '../models/food_item.dart';

class FoodCard extends StatelessWidget {
  final FoodItem foodItem;

  const FoodCard({required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: () {
        Navigator.pushNamed(context, AppRoutes.productScreen); // Add the product route
      },
      child: Container(
        width: 160,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
    
        child: Column(
          children: [
            Image.asset(
              foodItem.imageUrl,
              height: 120,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text(
              foodItem.title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '₹${foodItem.price}',
              style: TextStyle(fontSize: 16, color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
