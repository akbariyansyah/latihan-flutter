import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final Color color1 = Hexcolor("#158467");
final Color color2 = Hexcolor("#f08a5d");

class ProductCard extends StatelessWidget {
  final String imageURL;
  final String name;
  final String price;
  final int quantity;
  final String notification;
  final TextStyle textStyle = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w200,
      color: Colors.black,
      fontFamily: "Lobster");
  final Function onAddTap;
  final Function onDecTap;
  ProductCard(
      {this.imageURL = "",
      this.name = "",
      this.price = "",
      this.quantity = 0,
      this.notification,
      this.onAddTap,
      this.onDecTap});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(left: 20, right: 20),
          width: 260,
          duration: Duration(milliseconds: 400),
          height: (notification != null) ? 490 : 450,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 3,
                    offset: Offset(1, 1),
                    color: Colors.black.withOpacity(0.4))
              ],
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              )),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 1,bottom: 5),
              child: Text(
                (notification != null) ? notification : "",
                style: textStyle.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
        Container(
          width: 300,
          height: 450,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 6.0,
                    offset: Offset(0, 3))
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        image: DecorationImage(
                            image: AssetImage(imageURL), fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      name,
                      style: textStyle,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 5, left: 10),
                    child: Text(
                      price,
                      style:
                          textStyle.copyWith(fontSize: 20, color: Colors.red),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 280,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange, width: 3)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: onAddTap,
                          child: Container(
                            color: Colors.orange,
                            width: 40,
                            height: 40,
                            child: Icon(
                              Icons.add,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(quantity.toString()),
                        GestureDetector(
                          onTap: onDecTap,
                          child: Container(
                            color: Colors.orange,
                            width: 40,
                            height: 40,
                            child: Icon(
                              Icons.remove,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 280,
                    child: RaisedButton(
                      color: Colors.orange,
                      child: Icon(
                        Icons.add_shopping_cart,
                        size: 30,
                        color: Colors.white,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(35),
                              bottomRight: Radius.circular(35))),
                      onPressed: onAddTap,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
