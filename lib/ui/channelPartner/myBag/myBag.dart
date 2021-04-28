import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pikmee/ui/channelPartner/deliveryInfo/addAddress.dart';
import 'package:pikmee/ui/channelPartner/deliveryInfo/deliveryInfo.dart';
import 'package:pikmee/ui/channelPartner/orderVerification/orderVerification.dart';
import 'package:pikmee/ui/costants/constants.dart';

class CPMyBag extends StatefulWidget {

  @override
  _CPMyBagState createState() => _CPMyBagState();
}

class _CPMyBagState extends State<CPMyBag> {
  void showDialog1() {
    final orientation = MediaQuery.of(context).orientation;

    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 300),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: Scaffold(
              backgroundColor: Colors.transparent,

              body: Container(

                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "SELECT DELIVERY ADDRESS",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: kBlackColor),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                  return AddAddress();
                                }));
                              },
                              child: Text(
                                "+ ADD ADDRESS",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimaryColor),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 0.5,
                          width: MediaQuery.of(context).size.width*0.9,
                          color: kLGreyColor,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "NAME ABC",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: kBlackColor),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                  return EditAddress();
                                }));
                              },
                              child: Text(
                                "EDIT",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimaryColor),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          child:  Text(
                            "8730 Street- 21 Ludhiana Mobile - 98745518784",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kGreyColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                return OrderVerification();
                              }));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width*0.7,
                              height: 55,
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/icons/delivery.png",
                                    height: 22,
                                  color: kWhiteColor,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("DELIVER HERE",
                                    style: TextStyle(
                                        color: kWhiteColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )

                      ],
                    ),
                  )),
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }
  List size = [
    "S",
    "M",
    "L",
    "XL",
    "XXL",
    "XXL",
  ];

  void showDialog2() {
    final orientation = MediaQuery.of(context).orientation;

    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 300),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            height: 400,
            width: MediaQuery.of(context).size.width*0.95,
            child: Scaffold(
              backgroundColor: Colors.transparent,

              body: Container(

                  width: MediaQuery.of(context).size.width*.95,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
30
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width*0.03,
                            right: MediaQuery.of(context).size.width*0.03,
                          ),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Select Sizes",
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),),
                                Text("Size Guide",
                                  style: TextStyle(
                                      color: kLightColor,
                                      fontSize: 14,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width*0.0,
                            right: MediaQuery.of(context).size.width*0.0,
                          ),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.15,
                                  child: Center(
                                    child: Text("SIZES",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: MediaQuery.of(context).size.width*0.025,
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w500),),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.15,
                                  child: Center(
                                    child: Text("IN-STOCK",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: MediaQuery.of(context).size.width*0.025,
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w500),),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.3,

                                  child: Center(
                                    child: Text("IN-PRODUCTION",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: MediaQuery.of(context).size.width*0.025,
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w500),),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.25,
                                  child: Center(
                                    child: Text("ORDER",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: MediaQuery.of(context).size.width*0.025,
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w500),),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 260,
                            child: Column(
                              children: [
                                Expanded(child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 6,
                                    itemBuilder: (BuildContext context, int index){
                                      return Padding(
                                        padding: EdgeInsets.only(bottom: 10.0),
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,

                                            children: [
                                              Container(
                                                width: MediaQuery.of(context).size.width*0.15,
                                                child: Center(
                                                  child: Text("${size[index]}",
                                                    style: TextStyle(
                                                        color: kBlackColor,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500),),
                                                ),
                                              ), Container(
                                                width: MediaQuery.of(context).size.width*0.15,
                                                child: Center(
                                                  child: Text("200",
                                                    style: TextStyle(
                                                        color: kBlackColor,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500),),
                                                ),
                                              ), Container(
                                                width: MediaQuery.of(context).size.width*0.3,
                                                child: Center(
                                                  child: Text("200",
                                                    style: TextStyle(
                                                        color: kBlackColor,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500),),
                                                ),
                                              ), Container(
                                                width: MediaQuery.of(context).size.width*0.25,
                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Container(
                                                        width: 30,
                                                        height: 30,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(25),
                                                            border: Border.all(
                                                                color: kLGreyColor,
                                                                width: 1
                                                            )
                                                        ),
                                                        child: Center(
                                                          child: Text("-",
                                                            style: TextStyle(
                                                                color: kBlackColor,
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w500),),
                                                        ),
                                                      ),Text("S",
                                                        style: TextStyle(
                                                            color: kBlackColor,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500),),
                                                      Container(
                                                        width: 30,
                                                        height: 30,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(25),
                                                            border: Border.all(
                                                                color: kLGreyColor,
                                                                width: 1
                                                            )
                                                        ),
                                                        child: Center(
                                                          child: Text("+",
                                                            style: TextStyle(
                                                                color: kBlackColor,
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w500),),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    })),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        onPressed: showDialog1,
        label:   Text("  SELECT ADDRESS  ",
        style: TextStyle(
            color: kWhiteColor,
            fontSize: 18,
            fontWeight: FontWeight.w400),),),
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
                            Text("My Bag",
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
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/images/icons/bag.png",
                              height: 24,
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text("TOTAL ITEMS (1)",
                style: TextStyle(
                    color: kBlackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),),
              SizedBox(height: 20,),

              Container(
                width: MediaQuery.of(context).size.width*0.5,
                height: 0.5,
                color: kLGreyColor,
              ),
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width*0.95,
                height: MediaQuery.of(context).size.height,

                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int index){
                            return Padding(
                              padding:  EdgeInsets.only(top: 10.0),
                              child: Container(
                                height: 200,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.3,
                                      height: 200,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: 190,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: AssetImage("assets/images/man.png"),
                                                  fit: BoxFit.cover,
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 200,
                                      width: MediaQuery.of(context).size.width*0.5,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                        children: [
                                          Container(
                                            width: MediaQuery.of(context).size.width*0.5,
                                            child:Text("Highline Premium Tipped Polo T-Shirt Apple Green With White",
                                              style: TextStyle(
                                                  color: kBlackColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context).size.width*0.5,
                                            child:Text("Highline Tipped Polo T-Shirt",
                                              style: TextStyle(
                                                  color: kLGreyColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),),
                                          ),

                                          GestureDetector(
                                            onTap: showDialog2,
                                            child: Container(
                                              width: MediaQuery.of(context).size.width*0.5,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  color: kLGreyColor.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(30)
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image.asset("assets/images/edit.png",
                                                    height: 18,),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text("Edit",
                                                    style: TextStyle(
                                                        color: kBlackColor,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400),),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context).size.width*0.5,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: kWhiteColor,
                                                border: Border.all(
                                                    width: 1,
                                                    color: kLightColor
                                                ),
                                                borderRadius: BorderRadius.circular(30)
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Image.asset("assets/images/icons/bin.png",
                                                  height: 18,
                                                  color: kPrimaryColor,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text("Remove",
                                                  style: TextStyle(
                                                      color: kPrimaryColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w400),),
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
                          }),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    ),);
  }
}
