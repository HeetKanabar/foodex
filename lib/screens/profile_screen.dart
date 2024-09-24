import 'package:flutter/material.dart';
import '../widgets/profile_info_widget.dart';
import '../widgets/payment_method_widget.dart';
import '../widgets/update_button_widget.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Variables for payment method selection
  String selectedPaymentMethod = 'Card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Information Section
            Text(
              'Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ProfileInfoWidget(),  // Moved to widget
            SizedBox(height: 30),

            // Payment Method Section
            Text(
              'Payment Method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            PaymentMethodWidget(
              selectedMethod: selectedPaymentMethod,
              onMethodSelected: (value) {
                setState(() {
                  selectedPaymentMethod = value;
                });
              },
            ),  // Moved to widget

            Spacer(),

            // Update Button
            UpdateButtonWidget(onPressed: () {
              // Placeholder for update logic
              print('Update profile');
            }),
          ],
        ),
      ),
    );
  }
}
