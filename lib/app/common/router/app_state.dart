import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  var isAuth = true;

  void setAuthState(bool was) {
    isAuth = was;

    notifyListeners();
  }
}
