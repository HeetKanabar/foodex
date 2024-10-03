// screens/cart_screen.dart

import 'package:flutter/material.dart';
import 'package:foodex/routes/app_routes.dart';
import 'package:foodex/screens/checkout_screen.dart';
import '../models/cart_item_model.dart';
import '../widgets/cart_item_card.dart';

class FavScreen extends StatefulWidget {
  @override
  _FavScreen createState() => _FavScreen();
}

class _FavScreen extends State<FavScreen> {
  List<CartItem> cartItems = [
    CartItem(name: 'Veggie tomato mix', price: 1900, quantity: 1),
    CartItem(name: 'Fishwith mix orange...', price: 1900, quantity: 1),
    CartItem(name: 'Veggie tomato mix', price: 1900, quantity: 1),
  ];

  void _removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  void _likeItem(int index) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${cartItems[index].name} liked!')),
    );
  }

  void _increaseQuantity(int index) {
    setState(() {
      cartItems[index].quantity++;
    });
  }

  void _decreaseQuantity(int index) {
    if (cartItems[index].quantity > 1) {
      setState(() {
        cartItems[index].quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Favorite',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.swipe, color: Colors.grey),
                SizedBox(width: 8),
                Text('Swipe left to delete'),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: Key(cartItems[index].name),
                    background: Container(
                      color: Colors.red, // Left swipe background color for "delete"
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.delete, color: Colors.white),
                    ),
                    onDismissed: (direction) {
                       if (direction == DismissDirection.endToStart) {
                        // Left swipe: Delete item
                        _removeItem(index);
                      }
                    },
                    child: CartItemCard(
                      cartItem: cartItems[index],
                      onRemove: () => _removeItem(index),
                      onLike: () => _likeItem(index),
                      onIncreaseQuantity: () => _increaseQuantity(index),
                      onDecreaseQuantity: () => _decreaseQuantity(index),
                    ),
                  );
                },
              ),
            ),
            // Bottom "Complete order" button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle order completion
                  Navigator.pushNamed(context, AppRoutes.checkoutScreen);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Complete order',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
