import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/widgets/customTextField.dart';


class EditAddress extends StatefulWidget {
  @override
  _EditAddressState createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
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
                      Text("Edit Address",
                        style: TextStyle(
                            color: kBlackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),),
                      IconButton(
                        onPressed: () {
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Colors.transparent,
                        iconSize: 24,
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,

                  child: Text("DELIVERY INFO",
                    style: TextStyle(
                        color: kBlackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 0.5,
                  width: MediaQuery.of(context).size.width*0.9,
                  color: kLGreyColor.withOpacity(0.5),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.9,

                  child: Column(
                    children: [

                      CustomTextField(
                        name: "Name",
                        height: 24,
                        color: kLGreyColor.withOpacity(0.5),

                        image: "assets/images/icons/person.png",
                      ),
                      CustomTextField(
                        name: "Company Name",
                        color: kLGreyColor.withOpacity(0.5),

                        image: "assets/images/icons/group.png",
                      ),
                      CustomTextField(
                        name: "Phone number",
                        color: kLGreyColor.withOpacity(0.5),

                        image: "assets/images/icons/phone.png",
                      ),
                      CustomTextField(
                        name: "Alternate number (Optional)",
                        image: "assets/images/icons/phone.png",
                        color: kLGreyColor.withOpacity(0.5),

                      ),

                      CustomTextField(
                        name: "Street Address",
                        image: "assets/images/icons/add.png",
                        color: kLGreyColor.withOpacity(0.5),

                        height: 19,

                      ),CustomTextField(
                        name: "Landmark (Optional)",
                        image: "assets/images/icons/add.png",
                        color: kLGreyColor.withOpacity(0.5),

                        height: 19,

                      ),
                      Container(
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
                                            color: kGreyColor.withOpacity(0.5),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: kLGreyColor.withOpacity(0.5)),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: kLGreyColor.withOpacity(0.5)),
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
                                            color: kGreyColor.withOpacity(0.5),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: kLGreyColor.withOpacity(0.5)),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: kLGreyColor.withOpacity(0.5)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomTextField(
                        name: "State",
                        image: "assets/images/icons/add.png",
                        color: kLGreyColor.withOpacity(0.5),

                        height: 19,

                      ),
                      SizedBox(
                        height: 20,
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 200,
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    kPrimaryColor,
                                    kPrimaryColor,
                                  ]
                              )
                          ),
                          child: Center(
                            child: Text(
                              "SAVE ADDRESS",
                              style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
