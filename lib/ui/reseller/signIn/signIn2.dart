import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/reseller/forgotPassword/forgotPassword.dart';
import 'package:pikmee/ui/reseller/navigation/navigation.dart';

class SignIn2 extends StatelessWidget {
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
              Container(
                child: Column(
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
                        "Discover Varieties!",
                        style: TextStyle(
                            color: kBlackColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      child: Text(
                        "You just one more step away from signing up",
                        style: TextStyle(
                            color: kLGreyColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.02,
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width*0.8,
                      child: TextField(
                        cursorColor: kPrimaryColor,
                        decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          labelText: "Password",
                          labelStyle: TextStyle(
                              color: kLGreyColor,
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
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return RNavigation();
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
                                      fontWeight: FontWeight.w400),
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
                      height: MediaQuery.of(context).size.height*0.05,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return ForgotPassword();
                        }));
                      },
                      child: Text(
                        "Forgot Password? ",
                        style: TextStyle(
                            color: kGreyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),



                  ],
                ),
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
