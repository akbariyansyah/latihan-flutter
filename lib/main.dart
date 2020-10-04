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
          builder: (context) => ProductBloc(), child: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    ProductBloc bloc = BlocProvider.of<ProductBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Latihan List view builder"),backgroundColor: Colors.orange,),
      body: Column(
        children: [

          Container(
            margin: EdgeInsets.only(top: 20),
            child: RaisedButton(
              onPressed: () {
                bloc.dispatch(3 + random.nextInt(4));
              },
              child: Text("Add Product",style: TextStyle(color: Colors.white),),
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 15,),
          BlocBuilder<ProductBloc, List<Product>>(
            builder: (context, products) => Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        (index == 0) ? SizedBox(width: 30,) : Container(),
                        ProductCard(
                          imageURL: products[index].imageURL,
                          price: products[index].price.toString(),
                          name: products[index].name,
                          onDecTap: () {},
                          onAddTap: () {},
                          notification: null,
                        ),
                        SizedBox(width: 30,)
                      ],
                    );
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
  Product({this.imageURL = "", this.price = 0, this.name = ""});
}

class ProductBloc extends Bloc<int, List<Product>> {
  @override
  List<Product> get initialState => [];

  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    List<Product> products = [];
    for (int i = 0; i < event; i++) {
      products.add(Product(
          name: "Beautiful Gravity",
          imageURL:
              "assets/image-2.jpg",
          price: (i + 1) * 1500 - (i *200)));
    }
    yield products;
  }
}

