import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/auth_services.dart';
import 'package:myapp/main_page.dart';
import 'package:myapp/wrapper.dart';
import 'package:provider/provider.dart' as provider;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return provider.StreamProvider.value(
      value: AuthServices.firebaseUserStream,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
