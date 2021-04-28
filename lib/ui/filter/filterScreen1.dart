import 'package:flutter/material.dart';
import 'package:pikmee/ui/channelPartner/signIn/signInCP.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/reseller/signIn/signIn.dart';

class FilterScreen1 extends StatefulWidget {
  @override
  _FilterScreen1State createState() => _FilterScreen1State();
}

class _FilterScreen1State extends State<FilterScreen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,

        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/2.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
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
                    SizedBox(
                      height: 300,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return SignIn();
                        }));

                      },
                      child: Container(
                        width: 250,
                        child: Container(
                          height:60,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: kBlackColor,

                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Reseller",
                                  style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  height: 20,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: kWhiteColor,

                                  ),
                                  child: Center(
                                    child: Icon(Icons.arrow_forward_ios_rounded,
                                    color: kBlackColor,
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
                      height: 5,
                    ),
                    Text(
                      "Click here if you are reseller",
                      style: TextStyle(
                          color: kLGreyColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return SignInCP();
                        }));

                      },
                      child: Container(
                        width: 250,
                        child: Container(
                          height:60,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: kLightColor,

                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Channel Partner",
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
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: kWhiteColor,

                                  ),
                                  child: Center(
                                    child: Icon(Icons.arrow_forward_ios_rounded,
                                    color: kBlackColor,
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
                      height: 5,
                    ),
                    Text(
                      "Direct Login for Channel Partner",
                      style: TextStyle(
                          color: kLGreyColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
