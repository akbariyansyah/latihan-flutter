import 'package:flutter/material.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:myapp/product_card.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Latihan Product Card"),
        ),
        body: ChangeNotifierProvider<ProductState>(
          builder: (context) => ProductState(),
          child: Container(
            margin: EdgeInsets.all(30),
            child: Align(
              alignment: Alignment.topCenter,
              child: Consumer<ProductState>(
                builder: (context,productState,_) => ProductCard(
                  imageURL:
                      "https://images.unsplash.com/photo-1546548970-71785318a17b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
                  name: "Fruits",
                  price: "Rp. 10.000",
                  quantity: productState.quantity,
                  notification: (productState.quantity > 5) ? "Diskon 10 %" : null,
                  onAddTap: () {
                    productState.quantity++;
                  },
                  onDecTap: () {
                    productState.quantity--;
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class ProductState extends ChangeNotifier {
  int _quantity = 0;

  int get quantity => _quantity;
  set quantity(int newValue) {
    _quantity = newValue;
    notifyListeners();
  }
}