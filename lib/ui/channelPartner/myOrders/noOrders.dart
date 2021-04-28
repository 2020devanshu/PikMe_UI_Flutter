import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';

class NoOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,

        body: Stack(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset("assets/gif/7.gif",
                  fit: BoxFit.cover,)),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    kWhiteColor,
                    kWhiteColor,
                    kWhiteColor,
                    kWhiteColor.withOpacity(0.1),
                    Colors.transparent
                  ]
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
                                Text("My Orders",
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
                    height: 100,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Go Home.png")
                      )
                    ),
                  ),
                  Text("Your Bag is Empty",
                    style: TextStyle(
                        color: kBlackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                    ),),
                  Text("Looks like you have'nt made",
                    style: TextStyle(
                        color: kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w300
                    ),),
                  Text("your choice yet",
                    style: TextStyle(
                        color: kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w300
                    ),),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kPrimaryColor,
                    ),
                    child: Center(
                      child:  Text("Go Home",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                        ),),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
