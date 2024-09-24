// widgets/cart_item_card.dart

import 'package:flutter/material.dart';
import '../models/cart_item_model.dart';

class CartItemCard extends StatelessWidget {
  final CartItem cartItem;
  final VoidCallback onRemove;
  final VoidCallback onLike;
  final VoidCallback onIncreaseQuantity;
  final VoidCallback onDecreaseQuantity;

  const CartItemCard({
    required this.cartItem,
    required this.onRemove,
    required this.onLike,
    required this.onIncreaseQuantity,
    required this.onDecreaseQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Food Image Placeholder
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              radius: 30,
              child: Icon(Icons.fastfood, color: Colors.orange),
            ),
            SizedBox(width: 16),
            // Food Details (wrapped in Expanded to prevent overflow)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cartItem.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    overflow:
                        TextOverflow.ellipsis, // Prevent overflow in the text
                  ),
                  SizedBox(height: 4),
                  Text(
                    '#${cartItem.price}',
                    style: TextStyle(color: Colors.orange, fontSize: 16),
                  ),
                ],
              ),
            ),
            // Quantity Control and Like/Remove Buttons
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove_circle_outline, color: Colors.orange),
                  onPressed: onDecreaseQuantity,
                ),
                Text('${cartItem.quantity}', style: TextStyle(fontSize: 18)),
                IconButton(
                  icon: Icon(Icons.add_circle_outline, color: Colors.orange),
                  onPressed: onIncreaseQuantity,
                ),
                // IconButton(
                //   icon: Icon(Icons.favorite, color: Colors.red),
                //   onPressed: onLike,
                // ),
                // IconButton(
                //   icon: Icon(Icons.delete, color: Colors.red),
                //   onPressed: onRemove,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
