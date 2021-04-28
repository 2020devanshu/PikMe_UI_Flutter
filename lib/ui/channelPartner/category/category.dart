import 'package:flutter/material.dart';
import 'package:pikmee/ui/channelPartner/productListing/productListing.dart';
import 'package:pikmee/ui/costants/constants.dart';

class CPCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return SafeArea(
        child: Scaffold(
          backgroundColor: kWhiteColor,
          body: Container(
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
                              Text("Polo T-Shirts",
                                style: TextStyle(
                                    color: kBlackColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),),
                              Text("7 items",
                                style: TextStyle(
                                    color: kGreyColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),),
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
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Container(
                  child: Column(
                    children: [
                            Text("Choose",
                      style: TextStyle(
                            color: kLightColor,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                      fontFamily: "fairplay",
                      ),),
                      Text("The Category",
                      style: TextStyle(
                            color: kLightColor,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                        fontFamily: "fairplay",

                      ),),
                          ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 0.5,
                  color: kLGreyColor,
                  width: MediaQuery.of(context).size.width*0.65,
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width*0.1,
                        right: MediaQuery.of(context).size.width*0.1,
                        top: 10,
                        bottom: 10
                      ),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                            return CPProductListingPage();
                          }));
                        },
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: MediaQuery.of(context).size.width*0.3,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: AssetImage("assets/images/man.png"),
                                            fit: BoxFit.cover
                                          )
                                        ),
                                      ),
                                      Text("Fastees Half Sleeve",
                                        style: TextStyle(
                                            color: kBlackColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),),


                                    ],
                                  ),
                                ),
                                Positioned(
                                    bottom: 5,
                                    right: 0,
                                    child: Icon(Icons.arrow_forward,color: kLightColor,)),

                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: 0.4,
                              color: kLGreyColor,
                            )
                          ],
                        ),
                      ),
                    );
                  })
                ),
              ],
            ),
          ),
        )
    );
  }
}
