import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/widgets/customTextField.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool male = false;
  bool female  = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,

        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      kWhiteColor.withOpacity(0.8),
                      kLightColor.withOpacity(0.05),
                    ]
                )
            ),
            child: Column(
              children: [
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
                ),SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Text("Complete this form",
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Row(
                    children: [
                      Text("IF you already have an account? ",
                          style: TextStyle(
                              color: kGreyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                      ),  Text("Sign In",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
               CustomTextField(
                        name: "Name",
                        height: 24,

                        image: "assets/images/icons/person.png",
                      ),
                CustomTextField(
                 name: "Company Name",

                  image: "assets/images/icons/group.png",
               ),
                CustomTextField(
                 name: "GST(Optional)",
                  image: "assets/images/icons/gst.png",
                  height: 20,

                ),
                CustomTextField(
                 name: "Phone number",
                  image: "assets/images/icons/phone.png",
               ),
                CustomTextField(
                 name: "Email",
                  image: "assets/images/icons/mail.png",
                  height: 15,
               ),
                CustomTextField(
                 name: "Password",
                  image: "assets/images/icons/lock.png",
                  height: 19,
               ),                CustomTextField(

                 name: "Confirm Password",
                  image: "assets/images/icons/lock.png",
                  height: 19,

                ),
                CustomTextField(
                 name: "Street Address",
                  image: "assets/images/icons/add.png",
                  height: 19,

                ), Container(
                  width:        MediaQuery.of(context).size.width*0.8,


                  child: Row(
                    children: [
                      Container(
                        width:
                        MediaQuery.of(context).size.width*0.4,

                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 26,
                              child: Image.asset("assets/images/icons/add.png",
                                height: 19,
                                color: kLGreyColor,),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextFormField(
                                cursorColor: kPrimaryColor,
                                decoration: InputDecoration(

                                  hoverColor: kPrimaryColor,
                                  focusColor: kPrimaryColor,
                                  fillColor: Colors.transparent,
                                  labelText: "City",
                                  labelStyle: TextStyle(
                                      color: kLGreyColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300
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
                          ],
                        ),
                      ), Container(
                        width:
                        MediaQuery.of(context).size.width*0.4,

                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 26,
                              child: Image.asset("assets/images/icons/pin.png",
                                height: 19,
                                color: kLGreyColor,),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextFormField(
                                cursorColor: kPrimaryColor,
                                decoration: InputDecoration(

                                  hoverColor: kPrimaryColor,
                                  focusColor: kPrimaryColor,
                                  fillColor: Colors.transparent,
                                  labelText: "Pin code",
                                  labelStyle: TextStyle(
                                      color: kLGreyColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),CustomTextField(
                 name: "State",
                  image: "assets/images/icons/add.png",
                  height: 19,

                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(

                      onTap: (){
                        setState(() {
                          male=true;
                          female=false;
                        });
                      },
                      child: Container(
                        width: 120,
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: male==false?kWhiteColor:kPrimaryColor,
                            border: Border.all(
                              color: kWhiteColor
                            )
                          ),
                          child: Center(
                            child: Text(
                              "Male",
                              style: TextStyle(
                                  color: male==false?kGreyColor:kWhiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          male=false;
                          female=true;
                        });
                      },
                      child: Container(
                        width: 120,
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                              color: female==false?kWhiteColor:kPrimaryColor,
                            border: Border.all(
                              color: kWhiteColor
                            )
                          ),
                          child: Center(
                            child: Text(
                              "Female",
                              style: TextStyle(
                                  color: female==false?kGreyColor:kWhiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  child: Container(

                    height: MediaQuery.of(context).size.height*0.08,
                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          kPrimaryColor,
                        kLightColor
                        ]
                      )
                    ),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/Untitled.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
