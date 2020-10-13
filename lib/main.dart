import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/services/database_services.dart';
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
    // return provider.StreamProvider.value(
    //   value: AuthServices.firebaseUserStream,
    //   child: MaterialApp(
    //     home: Wrapper(),
    //   ),
    // );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan FIrestore"),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    DatabaseServices.createOrUpdateProduct("1",
                        name: "Masker", price: 10000);
                  },
                  child: Text("Add Data"),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: () {
                    DatabaseServices.createOrUpdateProduct("1",
                        name: "Masker", price: 20000);
                  },
                  child: Text("Edit Data"),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: () async {
                    var snapshot = await DatabaseServices.getProduct("1");
                    print(snapshot.data["name"]);
                    print(snapshot.data["harga"]);
                  },
                  child: Text("Get Data"),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: () async {
                   await DatabaseServices.deleteProduct("1");
                  },
                  child: Text("Delete Data"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
