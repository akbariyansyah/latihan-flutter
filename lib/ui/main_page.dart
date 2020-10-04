import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/bloc/color_bloc.dart';
import 'package:myapp/bloc/counter_bloc.dart';
import 'package:myapp/ui/draft_page.dart';
import 'package:myapp/ui/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc,Color>(
      builder: (context,color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc,int>(
                builder: (context,counter) => Text(
                  counter.toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BlocBuilder<ColorBloc,Color>(
                builder: (context,color) => RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  color: color,
                  shape: StadiumBorder(),
                  child: Text(
                    "Click Me",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
