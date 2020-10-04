
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {

  final Color backgroundColor;
  final Widget body;

  DraftPage({this.backgroundColor,this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Multi Bloc"),backgroundColor: backgroundColor,),
      body: body,
    );
  }
}
