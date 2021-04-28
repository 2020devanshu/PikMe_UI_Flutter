import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/splashScreen/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "Nexa",
          primaryColor: Colors.redAccent,
          accentColor: Colors.redAccent,
        canvasColor: Colors.transparent,

      ),
      home: SplashScreen(),
    );
  }
}