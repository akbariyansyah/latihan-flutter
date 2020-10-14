import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/main_page.dart';
import 'package:myapp/second_page.dart';
import 'package:myapp/third_page.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => LoginPage()),
        GetPage(name: "/main", page: () => MainPage()),
        GetPage(
            name: "/second",
            page: () => SecondPage(),
            transition: Transition.zoom),
        GetPage(name: "/third", page: () => ThirdPage()),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
