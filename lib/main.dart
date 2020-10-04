import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc/bloc.dart';
import 'package:myapp/bloc/user_bloc.dart';
import 'package:myapp/ui/main_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(builder: (context) => UserBloc(),
      child: MainPage(),),
    );
  }
}