import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/color_bloc.dart';
import 'package:bloc/bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ColorBloc>(
          builder: (context) => ColorBloc(),
          child: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan bloc dengan package",),
        flexibleSpace: BlocBuilder<ColorBloc,Color>(
          builder: (context,currentColor) => AnimatedContainer(
            duration: Duration(milliseconds: 500),
            color: currentColor,
          ),
        ),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc,Color>(
          builder: (context,currentColor) =>
           AnimatedContainer(
            width: 150,
            height: 150,
            color: currentColor,
            duration: Duration(milliseconds: 500),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              colorBloc.dispatch(ColorEvent.to_amber);
            },
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            width: 30,
          ),
          FloatingActionButton(
            onPressed: () {
              colorBloc.dispatch(ColorEvent.to_light_blue);
            },
            backgroundColor: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}
