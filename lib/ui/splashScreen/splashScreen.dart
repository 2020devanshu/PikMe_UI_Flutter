import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/onBoard/onBoard.dart';

class SplashScreen extends StatefulWidget {
  static String id = "SplashScreen";


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
        Duration(seconds: 4),
            () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
          return OnBoard();
        }))
    );    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset("assets/gif/0.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}