import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pikmee/ui/costants/constants.dart';

class EmailVerification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.lightBlueAccent,
                        kWhiteColor,
                        kWhiteColor,
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
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,

              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.22,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.6,
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: kWhiteColor,
                              width: 1
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Email Verification",
                            style: TextStyle(
                                color: kBlackColor,
                                fontSize: 26,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "We have send code to your",
                            style: TextStyle(
                                color: kGreyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),Text(
                            "email *******@gmail.com",
                            style: TextStyle(
                                color: kGreyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.05,
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.72,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.width*0.15,
                                      width: MediaQuery.of(context).size.width*0.15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: kLGreyColor.withOpacity(0.5),
                                          width: 1
                                        )
                                      ),
                                    ), Container(
                                      height: MediaQuery.of(context).size.width*0.15,
                                      width: MediaQuery.of(context).size.width*0.15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: kLGreyColor.withOpacity(0.5),
                                          width: 1
                                        )
                                      ),
                                    ), Container(
                                      height: MediaQuery.of(context).size.width*0.15,
                                      width: MediaQuery.of(context).size.width*0.15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: kLGreyColor.withOpacity(0.5),
                                          width: 1
                                        )
                                      ),
                                    ), Container(
                                      height: MediaQuery.of(context).size.width*0.15,
                                      width: MediaQuery.of(context).size.width*0.15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: kLGreyColor.withOpacity(0.5),
                                          width: 1
                                        )
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.75,

                                child: TextFormField(
                                  showCursor: false,
                                  textAlign: TextAlign.start,
                                  cursorColor: Colors.transparent,
                                  style: TextStyle(
                                    letterSpacing: 70
                                  ),
                                  keyboardType: TextInputType.number,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    fillColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),

                                    ),
                                  ),
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(4)
                                ],

                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.05,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Didn't receive the code?",
                                style: TextStyle(
                                    color: kGreyColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),InkWell(
                                onTap: (){
                                  Fluttertoast.showToast(
                                      msg: "Code Resend",
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor: kPrimaryColor,
                                      textColor: kWhiteColor
                                  );

                                },
                                child: Text(
                                  "Resend",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.05,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.75,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: (){

                                  },
                                  child: Container(
                                    height:60,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: kPrimaryColor,

                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Center(
                                              child: Icon(Icons.arrow_forward,
                                                color: kWhiteColor,
                                                size: 26,),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
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
    );
  }
}
