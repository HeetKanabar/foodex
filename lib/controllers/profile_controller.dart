import 'package:flutter/material.dart';
import '../models/user_model.dart';

class ProfileController with ChangeNotifier {
  User _user = User(
    name: 'Marvis Ighedosa',
    email: 'dosamarvis@gmail.com',
    address: 'No 15 uti street off ovie palace road effurun delta state',
  );

  User get user => _user;

  void updateUser(User newUser) {
    _user = newUser;
    notifyListeners();
  }

  // Payment methods can also be managed in the controller
}
