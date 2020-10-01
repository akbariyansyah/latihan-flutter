import 'package:flutter/cupertino.dart';

class Money with ChangeNotifier {
  int _balance = 10000;

  set balance(int newValue) {
    _balance = newValue;
    notifyListeners();
  }

  int get balance => _balance;
}
