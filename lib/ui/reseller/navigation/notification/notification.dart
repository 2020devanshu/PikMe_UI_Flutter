import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';

class RNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
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
                                  Text("Notifications",
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
                    Container(
                      decoration: BoxDecoration(
                          color: kLightColor.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Transform.rotate(
                          angle: 30,
                          child: Image.asset(
                            "assets/images/icons/search.png",
                            height: 24,
                            color: kLightColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding:  EdgeInsets.only(
                          left: MediaQuery.of(context).size.width*0.05,
                          right: MediaQuery.of(context).size.width*0.05,
                        top: 15,
                        bottom: 5
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        height: MediaQuery.of(context).size.height*0.45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kWhiteColor,
                          border: Border.all(
                            width: 0.2,
                            color: kLGreyColor
                          ),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0.2,
                              color: kLGreyColor.withOpacity(0.5),
                              blurRadius: 10,
                                offset: Offset(-1.0,15.8)

                            )
                          ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.01,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width*0.05,
                                  right: MediaQuery.of(context).size.width*0.05,

                              ),                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Main Title 01",
                                    style: TextStyle(
                                        color: kBlackColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300),),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: kPrimaryColor,
                                        width: 0.5
                                      ),
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Center(
                                      child: Icon(Icons.close,
                                      color: kPrimaryColor,),
                                    ),
                                  )
                                ],
                              ),
                            ),SizedBox(
                              height: 0,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width*0.05,
                                  right: MediaQuery.of(context).size.width*0.05,

                              ),
                              child: Text("Description upto 100 words .................."
                                  "...................................."
                                  "......................................................................."
                                  ".........................................."
                                  "..................................."
                                  "..............",
                                style: TextStyle(
                                    color: kGreyColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Nexa-Light.ttf"

                                ),),
                            ),SizedBox(
                              height: MediaQuery.of(context).size.height*0.01,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width*0.05,
                                  right: MediaQuery.of(context).size.width*0.05,

                              ),
                              child: Container(
                                height: MediaQuery.of(context).size.height*0.22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/fab.png"),
                                      fit: BoxFit.cover
                                    )
                                  ),
                            ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.01,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                left: MediaQuery.of(context).size.width*0.05,
                                right: MediaQuery.of(context).size.width*0.05,

                              ),
                              child: Row(
                                children: [
                                    Text("8 March 2021",
                                    style: TextStyle(
                                        color: kGreyColor,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Nexa-Light.ttf"

                                    ),),
                                  ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.01,
                            ),
                          ],
                        ),
                      ),
                    );
                  },

            ))
          ],
        ),
      );

  }
}
