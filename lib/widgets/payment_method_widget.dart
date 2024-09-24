import 'package:flutter/material.dart';

class PaymentMethodWidget extends StatelessWidget {
  final String selectedMethod;
  final Function(String) onMethodSelected;

  PaymentMethodWidget({
    required this.selectedMethod,
    required this.onMethodSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildPaymentOption('Card', Icons.credit_card, Colors.orange),
        _buildPaymentOption('Bank account', Icons.account_balance, Colors.pink),
        _buildPaymentOption('Paypal', Icons.paypal, Colors.blue),
      ],
    );
  }

  // Helper widget for building each payment option
  Widget _buildPaymentOption(String method, IconData icon, Color color) {
    return RadioListTile<String>(
      value: method,
      groupValue: selectedMethod,
      title: Text(method),
      secondary: Icon(icon, color: color),
      onChanged: (value) {
        onMethodSelected(value!);
      },
    );
  }
}
