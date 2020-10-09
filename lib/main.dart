import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///D:/enigma/Flutter/flutter-basic/my_app/myapp/lib/services/auth_services.dart';
import 'file:///D:/enigma/Flutter/flutter-basic/my_app/myapp/lib/ui/main_page.dart';
import 'file:///D:/enigma/Flutter/flutter-basic/my_app/myapp/lib/ui/wrapper.dart';
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
