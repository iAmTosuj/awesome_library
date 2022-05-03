import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  var isAuth = false;

  void setAuthState(bool was) {
    isAuth = was;

    notifyListeners();
  }
}
