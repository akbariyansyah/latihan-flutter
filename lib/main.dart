import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/color_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc colorBloc = ColorBloc();

  @override
  void dispose() {
    colorBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Bloc tanpa package"),
        ),
        body: Center(
            child: StreamBuilder(
          stream: colorBloc.stateStream,
          initialData: Colors.amber,
          builder: (context, snapshot) => AnimatedContainer(
            width: 200,
            height: 200,
            color: snapshot.data,
            duration: Duration(milliseconds: 500),
          ),
        )),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                colorBloc.eventSink.add(ColorEvent.to_amber);
              },
              backgroundColor: Colors.amber,
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                colorBloc.eventSink.add(ColorEvent.to_lightblue);
              },
              backgroundColor: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
