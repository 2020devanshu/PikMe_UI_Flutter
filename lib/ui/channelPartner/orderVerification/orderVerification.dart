import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pikmee/ui/channelPartner/thankyou/thankyou.dart';
import 'package:pikmee/ui/costants/constants.dart';

class OrderVerification extends StatelessWidget {
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

              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: kLightColor.withOpacity(0.15),
                                    borderRadius: BorderRadius.circular(50)),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.arrow_back),
                                  color: kLightColor,
                                  iconSize: 24,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Confirmation",
                                    style: TextStyle(
                                        color: kBlackColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),),

                                ],
                              ),

                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Transform.rotate(
                                angle: 30,
                                child: Image.asset(
                                  "assets/images/icons/search.png",
                                  height: 24,
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.15,
                    ),
                    Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(10,10),
                                color: kLGreyColor.withOpacity(0.15),
                              blurRadius: 5,
                              spreadRadius: 0.1
                            ),
                            BoxShadow(
                              offset: Offset(-10,-10),
                                color: kLGreyColor.withOpacity(0.2),
                                blurRadius: 5,
                                spreadRadius: 0.1



                            ),
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Order Verification",
                            style: TextStyle(
                                color: kBlackColor,
                                fontSize: 26,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "We have send code to your",
                            style: TextStyle(
                                color: kLGreyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),Text(
                            "phone number *******454",
                            style: TextStyle(
                                color: kLGreyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),Text(
                            "& registered email",
                            style: TextStyle(
                                color: kLGreyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 50,
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
                                              color: kLGreyColor,
                                              width: 1
                                          )
                                      ),
                                    ), Container(
                                      height: MediaQuery.of(context).size.width*0.15,
                                      width: MediaQuery.of(context).size.width*0.15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                              color: kLGreyColor,
                                              width: 1
                                          )
                                      ),
                                    ), Container(
                                      height: MediaQuery.of(context).size.width*0.15,
                                      width: MediaQuery.of(context).size.width*0.15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                              color: kLGreyColor,
                                              width: 1
                                          )
                                      ),
                                    ), Container(
                                      height: MediaQuery.of(context).size.width*0.15,
                                      width: MediaQuery.of(context).size.width*0.15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                              color: kLGreyColor,
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
                            height: 20,
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
                              ),Text(
                                "Resend",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                return ThankYou();
                              }));
                            },                            child: Container(
                              height:60,
                              width: MediaQuery.of(context).size.width*0.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: kPrimaryColor,

                              ),
                              child: Center(
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      "CONFIRM ORDER",
                                      style: TextStyle(
                                          color: kWhiteColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
