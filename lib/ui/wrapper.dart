import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/ui/welcome_page.dart';
import 'file:///D:/enigma/Flutter/flutter-basic/my_app/myapp/lib/ui/main_page.dart';
import 'package:provider/provider.dart' as provider;

import 'login_page.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = provider.Provider.of<FirebaseUser>(context);
    return (firebaseUser != null) ? MainPage(firebaseUser) : WelcomeScreen();
  }
}
