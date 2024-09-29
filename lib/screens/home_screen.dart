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
        // leading: IconButton(
        //   icon: Icon(Icons.menu, color: Colors.black),
        //   onPressed: () {
            
        //   },
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.orange,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text(
                  'Profile',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Navigate to profile
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag, color: Colors.white),
                title: Text(
                  'Orders',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Navigate to orders
                },
              ),
              ListTile(
                leading: Icon(Icons.local_offer, color: Colors.white),
                title: Text(
                  'Offer and Promo',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Navigate to offers and promo
                },
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip, color: Colors.white),
                title: Text(
                  'Privacy Policy',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Navigate to privacy policy
                },
              ),
              ListTile(
                leading: Icon(Icons.security, color: Colors.white),
                title: Text(
                  'Security',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Navigate to security
                },
              ),
              Spacer(),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text(
                  'Sign-out',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Handle sign out
                },
              ),
            ],
          ),
        ),
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
