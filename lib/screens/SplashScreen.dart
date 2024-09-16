import 'package:flutter/material.dart';
import 'package:foodex/utils/MyColors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Scaffold(
            backgroundColor: MyColors.backgroundColor,
        body: Column(
          children: [
            Image.asset("person2.png"),
            Text("Food for everyone")
            
          ],
        ),
      )),
    );
  }
}
