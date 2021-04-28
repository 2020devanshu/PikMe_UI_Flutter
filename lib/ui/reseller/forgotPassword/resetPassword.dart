import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pikmee/ui/costants/constants.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool pass = true;
  bool rePass = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          Colors.lightBlueAccent.withOpacity(0.2),
                          Colors.lightBlueAccent.withOpacity(0.15),
                          Colors.lightBlueAccent.withOpacity(0.01),

                        ]
                    )
                ),
              ),
        // Fluttertoast.showToast(
        //     msg: "please fill all the fields",
        //     gravity: ToastGravity.BOTTOM,
        //     backgroundColor: dColor,
        //     textColor: wColor
        // );
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset("assets/images/reset.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.05,
                    ),
                    Text(
                      "Set new Password",
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: 26,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      child: TextFormField(

                        obscureText: pass==true?true:false,
                        cursorColor: kPrimaryColor,
                        decoration: InputDecoration(
                          hoverColor: kPrimaryColor,
                          focusColor: kPrimaryColor,
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                pass==true?pass=false:pass=true;
                              });
                            },
                            icon: Icon(Icons.remove_red_eye_outlined),
                            color: pass==true?kGreyColor:kPrimaryColor,
                          ),
                          fillColor: Colors.transparent,
                          labelText: "Password",
                          hintStyle: TextStyle(
                              color: kGreyColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kWhiteColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kWhiteColor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      child: TextFormField(

                        obscureText: rePass==true?true:false,
                        cursorColor: kPrimaryColor,
                        decoration: InputDecoration(

                          hoverColor: kPrimaryColor,
                          focusColor: kPrimaryColor,
                          prefixIcon: Icon(Icons.lock_outline,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                rePass==true?rePass=false:rePass=true;
                              });
                            },
                            icon: Icon(Icons.remove_red_eye_outlined),
                            color: rePass==true?kGreyColor:kPrimaryColor,
                          ),
                          fillColor: Colors.transparent,
                          labelText: "Confirm Password",
                          hintStyle: TextStyle(
                              color: kGreyColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kWhiteColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kWhiteColor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.06,
                    ),
                    InkWell(
                      onTap: (){
                        Fluttertoast.showToast(
                            msg: "Password Reset",
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: kPrimaryColor,
                            textColor: kWhiteColor
                        );

                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.08,
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: kPrimaryColor,

                          ),
                          child: Center(
                            child: Text(
                              "Done",
                              style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
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
                            color: kBlackColor,
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
    ));
  }
}
