import 'package:flutter/material.dart';

class ProfileInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/profile_pic.png'), // Replace with actual image
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Marvis Ighedosa',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text('dosamarvis@gmail.com'),
            Text('No 15 uti street off ovie palace\nroad effurun delta state'),
          ],
        ),
      ],
    );
  }
}
