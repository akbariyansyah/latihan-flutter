import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/cart.dart';
import 'package:myapp/money.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiProvider(
      providers: [
        ChangeNotifierProvider<Cart>(
          builder: (context) => Cart(),
        ),
        ChangeNotifierProvider<Money>(
          builder: (context) => Money(),
        ),
      ],
      child: Scaffold(
        floatingActionButton: Consumer<Money>(
          builder: (context, money, _) => Consumer<Cart>(
            builder: (context, cart, _) => FloatingActionButton(
              backgroundColor: Colors.purple,
              child: Icon(
                Icons.add_shopping_cart,
              ),
              onPressed: () {
                if (money.balance >= 500) {
                  cart.quantity += 1;
                  money.balance -= 500;
                }
              },
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            "Latihan state management multi provider",
            maxLines: 2,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Balanca : "),
                Container(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<Money>(
                      builder: (context, money, _) => Text(
                        money.balance.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.black),
                      ),
                    ),
                  ),
                  width: 150,
                  height: 30,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.purple[50],
                      border: Border.all(color: Colors.purple, width: 2)),
                ),
              ],
            ),
            Container(
              child: Align(
                alignment: Alignment.centerRight,
                child: Consumer<Cart>(
                  builder: (context, cart, _) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Apple (500) x " + cart.quantity.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                      Text(
                        (500 * cart.quantity).toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              height: 30,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.purple[50],
                  border: Border.all(color: Colors.black, width: 2)),
            ),
          ],
        ),
      ),
    ));
  }
}
