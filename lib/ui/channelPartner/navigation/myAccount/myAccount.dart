import 'package:flutter/material.dart';
import 'package:pikmee/ui/channelPartner/myOrders/myOrder.dart';
import 'package:pikmee/ui/channelPartner/navigation/myProfile/myProfile.dart';
import 'package:pikmee/ui/costants/constants.dart';

class CPMyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color:  kWhiteColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50)
          )
      ),
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
                        Text("My Account",
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
            width: MediaQuery.of(context).size.width*0.7,
            color: kLGreyColor,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    kLGreyColor.withOpacity(0.1),
                    kWhiteColor,
                  ]
              ),            ),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/icons/proSetting.png",
                    color: kPrimaryColor,
                    height: 26,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.55,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("My Profile",
                            style: TextStyle(
                                color: kBlackColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),),
                          Text("Edit personal info, change password",
                            style: TextStyle(
                                color: kGreyColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w300),),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return CPMyProfile();
                        }));
                      },
                      child: Icon(Icons.arrow_forward,
                      color: kBlackColor,),
                    )

                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 0.5,
                    width: MediaQuery.of(context).size.width*0.8,
                  color: kLGreyColor,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/icons/bag2.png",
                    color: kPrimaryColor,
                    height: 26,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.55,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("My Orders",
                            style: TextStyle(
                                color: kBlackColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),),
                          Text("View and track your order",
                            style: TextStyle(
                                color: kGreyColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w300),),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return MyOrder();
                        }));
                      },
                      child: Icon(Icons.arrow_forward,
                        color: kBlackColor,),
                    )

                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 0.5,
                  width: MediaQuery.of(context).size.width*0.8,
                  color: kLGreyColor,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 0.5,
                  width: MediaQuery.of(context).size.width*0.8,
                ),
                SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
