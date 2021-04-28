import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/reseller/signIn/signIn2.dart';
import 'package:pikmee/ui/reseller/signUp/signUp1.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,

      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.lightBlueAccent.withOpacity(0.4),
                      Colors.lightBlueAccent.withOpacity(0.2),
                      Colors.lightGreenAccent.withOpacity(0.1),
                    ]
                  )
                ),
              ),
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/headder1.png",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.27,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset("assets/images/logoDeatail.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.05,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text(
                      "Let's sign you in.",
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: 26,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text(
                      "Welcome back. You've been missed!",
                      style: TextStyle(
                          color: kLGreyColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.08,
                    width: MediaQuery.of(context).size.width*0.8,
                    child: TextField(
                      cursorColor: kPrimaryColor,
                      decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        labelText: "Email / mobile no",
                        labelStyle: TextStyle(
                            color: kLGreyColor.withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kBlackColor),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kBlackColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return SignIn2();
                      }));

                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.08,
                        width: MediaQuery.of(context).size.width*0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: kBlackColor,

                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Continue",
                                style: TextStyle(
                                    color: kWhiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                height: 20,
                                width: 30,
                                child: Center(
                                    child: Icon(Icons.arrow_forward_ios_rounded,
                                      color: kWhiteColor,
                                      size: 16,)
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return SignUp1();
                      }));

                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.5+4,
                      child: Container(
                        height:MediaQuery.of(context).size.height*0.08+4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  kDarkColor,
                                  kLightColor,
                                  Colors.yellow,
                                ]
                            )
                        ),
                        child: Center(
                          child: Container(
                            height:MediaQuery.of(context).size.height*0.08,
                            width: MediaQuery.of(context).size.width*0.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: kWhiteColor
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Sign up",
                                  style: TextStyle(
                                      color: kBlackColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  height: 20,
                                  width: 30,
                                  child: Center(
                                      child: Icon(Icons.arrow_forward_ios_rounded,
                                        color: kBlackColor,
                                        size: 16,)
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.0,
                  ),
                  Text(
                    "or",
                    style: TextStyle(
                        color: kGreyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.0,
                  ),
                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          child: Image.asset("assets/images/fbLogo.png",
                            fit: BoxFit.contain,
                            height: 25,
                            color: kBlackColor,
                          ),
                        ),
                        Text(
                          "|",
                          style: TextStyle(
                              color: kGreyColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Container(
                          width: 60,
                          child: Image.asset("assets/images/googleLogo.png",
                            fit: BoxFit.contain,
                            height: 25,
                            color: kBlackColor,
                          ),
                        ),
                      ],
                    ),
                  )


                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,

                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back),
                            color: kWhiteColor,
                            iconSize: 26,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
