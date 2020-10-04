import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:myapp/bloc/color_bloc.dart';
import 'package:myapp/bloc/counter_bloc.dart';
import 'package:myapp/ui/main_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorBloc>(builder: (context) => ColorBloc(),),
        BlocProvider<CounterBloc>(builder: (context) => CounterBloc(),),
      ],
      child: MaterialApp(
        home: MainPage(),
      ),
    );
  }
}