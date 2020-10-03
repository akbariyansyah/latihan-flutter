import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/color_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = await HydratedBlocDelegate.build();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ColorBloc>(
          builder: (context) => ColorBloc(), child: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Latihan bloc hydrated",
        ),
        flexibleSpace: BlocBuilder<ColorBloc, Color>(
          builder: (context, currentColor) => AnimatedContainer(
            duration: Duration(milliseconds: 500),
            color: currentColor,
          ),
        ),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
            builder: (context, currentColor) => (currentColor == Colors.amber)
                ? AnimatedContainer(
                    width: 150,
                    height: 150,
                    color: currentColor,
                    duration: Duration(milliseconds: 500),
                  )
                : (currentColor == Colors.lightBlue)
                    ? AnimatedContainer(
                        width: 200,
                        height: 200,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: currentColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      )
                    : AnimatedContainer(
                        width: 150,
                        height: 150,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                            color: currentColor,
                            borderRadius: BorderRadius.circular(75)),
                      )),
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
          SizedBox(
            width: 30,
          ),
          FloatingActionButton(
            onPressed: () {
              colorBloc.dispatch(ColorEvent.to_red);
            },
            backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
