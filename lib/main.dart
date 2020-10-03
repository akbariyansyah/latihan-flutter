import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
import 'package:myapp/product_card.dart';
import 'package:bloc/bloc.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ProductBloc>(
          builder: (context) => ProductBloc(),
          child: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    ProductBloc bloc = BlocProvider.of<ProductBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Latihan List view builder")),
      body: Column(
        children: [
          RaisedButton(onPressed: () {
            bloc.dispatch(random.nextInt(6));
          }),
          BlocBuilder<ProductBloc,List<Product>>(
            builder: (context,products) => Expanded(
              child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(imageURL: products[index].imageURL,
                    price: products[index].price.toString(),name: products[index].name,
                    onDecTap: () {},
                    onAddTap: () {},
                    notification: "",);
                  }),
            ),
          )
        ],
      ),
    );
  }
}


class Product {
  String imageURL;
  String name;
  int price;
  Product({this.imageURL="",this.price=0,this.name=""});
}

class ProductBloc extends Bloc<int,List<Product>> {

  @override
  List<Product> get initialState => [];
  
  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    List<Product> products = [];
    for (int i=0;i<event;i++) {
      products.add(Product(name: "Frutis",imageURL: "https://images.unsplash.com/photo-1511688878353-3a2f5be94cd7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1868&q=80",
      price: (i + i) * 2000));
    }
    yield products;
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
