import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pikmee/ui/channelPartner/navigation/navigation.dart';
import 'package:pikmee/ui/costants/constants.dart';

class ThankYou extends StatefulWidget {
  @override
  _ThankYouState createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 4),
            () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
          return CPNavigation();
        }))
    );    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: Color(0xefed343a),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset("assets/gif/15.gif",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.45
                    ),

                    Text("You Order has ",
                      style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),),
                    Text("been placed",
                      style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),),
                    SizedBox(
                        height: MediaQuery.of(context).size.height*0.05
                    ),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width*0.45,
                      decoration: BoxDecoration(
                        color: kWhiteColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child:  Text("#13485154",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w700
                          ),),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height*0.05
                    ),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width*0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          width: 1,
                          color: kWhiteColor
                        )
                      ),
                      child: Center(
                        child:  Text("CONTINUE SHOPPING",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
