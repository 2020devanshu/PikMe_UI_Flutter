import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/reseller/signUp/signUpForm.dart';

class SignUp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,

        body: Stack(
          children: [

            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/balloon.png",
                fit: BoxFit.contain,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: 26,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text(
                      "Create your account",
                      style: TextStyle(
                          color: kLGreyColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width*0.8,
                    child: TextField(
                      cursorColor: kPrimaryColor,
                      decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        labelText: "Mobile number",
                        labelStyle: TextStyle(
                            color: kLGreyColor.withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.w400
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
                        return SignUpForm();
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
                    height: 10,
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
    );
  }
}
