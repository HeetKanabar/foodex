import 'package:flutter/material.dart';
import 'package:foodex/routes/app_routes.dart';
import '../widgets/category_item.dart';
import '../widgets/food_card.dart';
import '../models/food_item.dart';
import '../controllers/food_controller.dart';

class HomeScreen extends StatelessWidget {
  final FoodController _foodController = FoodController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delicious food for you',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 24),
            // Food Categories
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryItem(title: 'Foods', isActive: true),
                CategoryItem(title: 'Drinks'),
                CategoryItem(title: 'Snacks'),
                CategoryItem(title: 'Sauces'),
              ],
            ),
            SizedBox(height: 24),
            // Food Items
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _foodController.foodItems.length,
                itemBuilder: (context, index) {
                  final foodItem = _foodController.foodItems[index];
                  return FoodCard(
                    foodItem: foodItem,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (newIndex) => {
          if (newIndex == 2)
            {Navigator.pushNamed(context, AppRoutes.profileScreen)}
          else if (newIndex == 3)
            {Navigator.pushNamed(context, AppRoutes.cartScreen)}
        },
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
