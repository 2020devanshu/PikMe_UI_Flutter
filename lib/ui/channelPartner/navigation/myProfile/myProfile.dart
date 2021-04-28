import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/widgets/customTextField.dart';


class CPMyProfile extends StatefulWidget {
  @override
  _CPMyProfileState createState() => _CPMyProfileState();
}

class _CPMyProfileState extends State<CPMyProfile> {
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
                              Text("My Profile",
                                style: TextStyle(
                                    color: kBlackColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),),
                            ],
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Transform.rotate(
                                angle: 30,
                                child: Image.asset(
                                  "assets/images/icons/search.png",
                                  height: 24,
                                  color: kBlackColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: kLightColor.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/images/icons/bag.png",
                                height: 24,
                                color: kLightColor,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 0.5,
                    width: MediaQuery.of(context).size.width*0.8,
                  color: kLGreyColor.withOpacity(0.5),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        kLGreyColor.withOpacity(0.01),
                        kWhiteColor
                      ]
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset("assets/images/Untitled.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: kPrimaryColor
                                    ),
                                    child: Center(
                                      child: Text("Upload",
                                      style: TextStyle(
                                        color: kWhiteColor,

                                      ),),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: kWhiteColor
                                    ),
                                    child: Center(
                                      child: Text("Delete",
                                      style: TextStyle(
                                        color: kGreyColor,

                                      ),),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
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
                      ),
                      CustomTextField(
                        name: "Confirm Password",
                        image: "assets/images/icons/lock.png",
                        height: 19,

                      ),
                      CustomTextField(
                        name: "Street Address",
                        image: "assets/images/icons/add.png",
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
                                            color: kLGreyColor.withOpacity(0.5),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: kWhiteColor),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color:kWhiteColor),
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
                                            color: kLGreyColor.withOpacity(0.5),
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ), CustomTextField(
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
                                    kBlackColor,
                                    kBlackColor
                                  ]
                              )
                          ),
                          child: Center(
                            child: Text(
                              "Save Changes",
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
                ),Container(
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
