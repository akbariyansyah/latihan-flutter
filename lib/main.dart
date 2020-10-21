import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan URl Launcher"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LaunchButton("Call", () async {
                await call("+6282243956");
              }),
              LaunchButton("Sms", () async {
                await sendSms("+628224399089");
              }),
              LaunchButton("Email", () async {
                await sendEmail("john.cena@gmail.com");
              }),
              LaunchButton("Open Url", () async {
                // await openUrl(
                // "https://www.youtube.com/watch?v=8DgJnucRBss&list=PLZQbl9Jhl-VACm40h5t6QMDB92WlopQmV&index=96");
                await openUrl(
                "https://www.instagram.com/leomessi/?hl=id");
                // await openUrl(
                //     "https://ericodarmawan.com/#/");
                // await openUrl("https://www.amazon.com",
                //     forceWebView: true, enableJavascript: true);
                // await openUrl("amazon.com",
                //     forceWebView: true, enableJavascript: true);
              }),
            ],
          ),
        ));
  }
}

class LaunchButton extends StatelessWidget {
  final String name;
  final Function ontap;
  LaunchButton(this.name, this.ontap);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: RaisedButton(
        onPressed: ontap,
        child: Text(name),
        color: Colors.blue[200],
      ),
    );
  }
}

void call(String phoneNumber) async {
  await launch('tel:$phoneNumber');
}

void sendSms(String phoneNumber) async {
  await launch('sms:$phoneNumber');
}

void sendEmail(String email) async {
  await launch('mailto:$email');
}

void openUrl(String url, {bool forceWebView = false, bool enableJavascript = false}) async {
  if(await canLaunch(url)) {
    await launch(url,forceWebView: forceWebView, enableJavaScript: enableJavascript);
  }
}
 