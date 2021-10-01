import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:whatsapp_prototype/homescreen.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal[800],
        colorScheme: ColorScheme.dark(),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        seconds: 3,
        navigateAfterSeconds: HomeScreen(),
        loaderColor: Colors.grey[900],
        image: new Image.asset('images/whatsapp (1).png'),
        backgroundColor: Colors.grey[900],
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 60.0,
      ),
    );
  }
}
