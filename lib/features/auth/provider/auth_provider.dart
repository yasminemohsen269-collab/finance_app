import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLogin = false;

  bool get isLogin => _isLogin;

  login({email, password}) {
    notifyListeners();
  }
}
