import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/reseller/navigation/myProfile/myProfile.dart';
import 'package:pikmee/ui/reseller/navigation/ourStory/ourStrory.dart';

class RCustomDrawer extends StatefulWidget {
  @override
  _RCustomDrawerState createState() => _RCustomDrawerState();
}

class _RCustomDrawerState extends State<RCustomDrawer> {
  bool categories = false;

  _buildDrawerOption({String icon, Widget icon2, String title, Function onTap}) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 5,
        left: MediaQuery.of(context).size.width * 0.1,
        right: MediaQuery.of(context).size.width * 0.1,
      ),
      child: GestureDetector(
        onTap: onTap  ,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 18,
              color: kPrimaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w300,
              // fontFamily: "Nexa-Light.ttf",
              ),
            ),
            Expanded(child: Container()),
            icon2,
          ],
        ),
      ),
    );
  }

  List cat = [
    "Polo T-Shirt",
    "Round Neck",
    "Formal Shirt",
    "Sweatshrit & Jackets",
    "Workwear High Vis Jackets",
  ];

  Color color() {
    return kPrimaryColor;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.transparent,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: kLightColor.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/man.png"),
                      fit: BoxFit.cover)),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kWhiteColor),
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.58,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.65,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/man.png"),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height: 60,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Matt corby",
                                        style: TextStyle(
                                          color: kBlackColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "View My Profile",
                                        style: TextStyle(
                                          color: kLGreyColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: kBlackColor,
                                  size: 12,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          _buildDrawerOption(
                              onTap: (){
                                setState(() {
                                  categories==false?categories=true:categories=false;
                                });
                              },
                              icon: "assets/images/icons/categories.png",
                              title: "Categories",
                              icon2: categories==false?Icon(
                                Icons.add,
                                color: kBlackColor,
                                size: 12,
                              ):Icon(
                                Icons.remove,
                                color: kBlackColor,
                                size: 12,
                              )),
                          categories==true?Container(
                            height: 150,
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                      itemCount: cat.length,
                                      itemBuilder: (BuildContext context, int index){
                                    return Padding(
                                      padding:  EdgeInsets.only(
                                          left: MediaQuery.of(context).size.width*0.15,
                                        top: 10,
                                        bottom: 10
                                      ),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              "- ${cat[index]}",
                                              style: TextStyle(
                                                color: kBlackColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Nexa-Light.ttf"
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              ],
                            ),
                          ):Container(),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 200,
                            height: 0.5,
                            color: kLGreyColor,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          _buildDrawerOption(
                              icon: "assets/images/icons/profileSettings.png",
                              title: "Profile Setting",
                              icon2: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: kBlackColor,
                                size: 12,
                              ),
                            onTap: (){
                              Navigator.push(context, (MaterialPageRoute(builder: (BuildContext context){
                                return RMyProfile();

                              })));
                            },),
                          _buildDrawerOption(
                              icon: "assets/images/icons/add.png",
                              title: "Our Story",
                              icon2: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: kBlackColor,
                                size: 12,
                              ),
                          onTap: (){
                                Navigator.push(context, (MaterialPageRoute(builder: (BuildContext context){
                                  return OurStory();

                                })));
                          },
                          ),
                          _buildDrawerOption(
                              icon: "assets/images/icons/contact us.png",
                              title: "Contact us",
                              icon2: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: kBlackColor,
                                size: 12,
                              )),
                          _buildDrawerOption(
                              icon: "assets/images/icons/logout.png",
                              title: "Logout",
                              icon2: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: kBlackColor,
                                size: 12,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: kLGreyColor.withOpacity(0.1)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Rate this app",
                                        style: TextStyle(
                                            color: kGreyColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 12,
                                        color: kGreyColor,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
