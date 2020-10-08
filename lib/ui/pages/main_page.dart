import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/ui/widgets/movie_box.dart';

class MainPage extends StatelessWidget {
  PageController controller = PageController(initialPage: 0,viewportFraction: 0.7);
  List<String> urls = [
    "https://cdn.shopify.com/s/files/1/0057/3728/3618/products/4940c5878babf3dc5d2ca567b7558178_9e62fc4c-4116-48e5-a4f5-3a99c73ae7b1_480x.progressive.jpg?v=1573651499",
    "https://cdn.shopify.com/s/files/1/0057/3728/3618/products/Star_Wars_The_Rise_of_Skywalker_INTL_Final_480x.progressive.jpg?v=1575048733",
    "https://cdn.shopify.com/s/files/1/0057/3728/3618/products/interstellar5_480x.progressive.jpg?v=1585846879",
    "https://cdn.shopify.com/s/files/1/0057/3728/3618/products/avengers.intl.125809.ar_480x.progressive.jpg?v=1573856157",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Slider"),),
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: controller,
          itemCount: urls.length,
          itemBuilder: (context,index) => MovieBox(urls[index])),
    );
  }
}
