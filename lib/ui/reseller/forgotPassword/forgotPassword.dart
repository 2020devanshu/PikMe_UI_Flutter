import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/reseller/forgotPassword/emailVerification.dart';
import 'package:pikmee/ui/reseller/forgotPassword/phoneVerification.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool email = false;
  bool phone = false;

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
                        Colors.lightBlueAccent.withOpacity(0.5),
                        Colors.lightBlueAccent.withOpacity(0.3),
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

              child:Column(
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
                          "Forgot your Password?",
                          style: TextStyle(
                              color: kBlackColor,
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Please select the option to send link",
                          style: TextStyle(
                              color: kGreyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),Text(
                          "reset password",
                          style: TextStyle(
                              color: kGreyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.03,
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              email = true;
                              phone = false;
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.13,
                            width: MediaQuery.of(context).size.width*0.75,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: email==true?kPrimaryColor:kGreyColor,
                                    width: 0.8
                                )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.mail_outline, color: email==true?kPrimaryColor:kGreyColor),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.45,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      Text(
                                        "Reset via Email",
                                        style: TextStyle(
                                            color: email==true?kPrimaryColor:kBlackColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        "Reset link will be send to your registered email address",
                                        style: TextStyle(
                                            color: kGreyColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                               Icon(Icons.check_circle, color:  email==true?kPrimaryColor:Colors.transparent),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              email = false;
                              phone = true;
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.13,
                            width: MediaQuery.of(context).size.width*0.75,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: phone==true?kPrimaryColor:kGreyColor,
                                    width: 0.8
                                )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.chat_bubble_outline, color: phone==true?kPrimaryColor:kGreyColor),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.45,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Reset via SMS",
                                        style: TextStyle(
                                            color: phone==true?kPrimaryColor:kBlackColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        "Reset link will be send to your registered phone number",
                                        style: TextStyle(
                                            color: kGreyColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),

                                ),
                               Icon(Icons.check_circle, color: phone==true?kPrimaryColor:Colors.transparent),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.75,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: (){

                                  phone==true?Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                    return PhoneVerification();
                                  })): email==true? Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                    return EmailVerification();
                                  })): null;

                                },
                                child: Container(
                                  height:MediaQuery.of(context).size.height*0.08,
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
