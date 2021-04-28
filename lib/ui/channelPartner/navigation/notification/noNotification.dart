import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';

class NoNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
                          Text("Notification",
                            style: TextStyle(
                                color: kBlackColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),),
                          Text("0 items",
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
              height: 50,
            ),
            Container(
              height: 300,
              child: Image.asset("assets/images/noNoti.png"),
            ),
            Container(
              child: Text("Opps!",
                style: TextStyle(
                    color: kBlackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),),
            ),Container(
              child: Text("No messages right now",
                style: TextStyle(
                    color: kLGreyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),),
            ),
          ],
        ),
      ),
    );
  }
}
