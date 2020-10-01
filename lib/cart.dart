import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  int _quantity = 0;

  int get quantity => _quantity;

  set quantity(int newValue) {
    _quantity = newValue;
    notifyListeners();
  }

}