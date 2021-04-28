import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pikmee/ui/channelPartner/category/category.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/slider/slider.dart';

class CPCollections extends StatefulWidget {
  @override
  _CPCollectionsState createState() => _CPCollectionsState();
}

class _CPCollectionsState extends State<CPCollections> {

  bool sizeChart = false;
  bool catalogue = false;
  bool videos = false;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
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
                          Text("",
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
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.95,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(2,2),
                        color: kLGreyColor.withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 0.1
                    ),
                    BoxShadow(
                        offset: Offset(2,2),
                        color: kLGreyColor.withOpacity(0.4),
                        blurRadius: 4,
                        spreadRadius: 0.1



                    ),
                  ],
              ),

              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  viewportFraction: 1,

                  autoPlayInterval: Duration(seconds: 4),
                  autoPlayAnimationDuration:
                  Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeIn,
                  pauseAutoPlayOnTouch: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
                items: cardList.map((card) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width *
                                0.0),
                        child: card,
                      ),
                    );
                  });
                }).toList(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.6,
              height: 100,
              decoration: BoxDecoration(
                  color: kWhiteColor,
              ),
              child: Column(
                children: [
                  Text("Our",
                    style: TextStyle(
                      color: kLightColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      fontFamily: "fairplay",
                    ),),
                  Text("Collections",
                    style: TextStyle(
                      color: kLightColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      fontFamily: "fairplay",

                    ),),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.6,
              height: 1,
              color: kLGreyColor,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 800,
              child: Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      itemCount: 7,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,

                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(

                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width*0.02,
                            right: MediaQuery.of(context).size.width*0.02,
                            bottom: 10
                          ),                          child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                              return CPCategory();
                            }));
                          },
                            child: Container(
                              height:  MediaQuery.of(context).size.width*0.4,
                              width: MediaQuery.of(context).size.width*0.6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: kLGreyColor.withOpacity(0.1)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Container(
                                    height:  MediaQuery.of(context).size.width*0.4,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/man.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  Container(
                                    height:  MediaQuery.of(context).size.width*0.072,

                                    width: MediaQuery.of(context).size.width*0.6,
                                    child: Center(
                                      child: Text("Fastees Polo T-Shirt",
                                        style: TextStyle(
                                            color: kBlackColor,
                                            fontSize: MediaQuery.of(context).size.width*0.035,
                                            fontFamily: "fairplay",

                                            fontWeight: FontWeight.w500),),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.8,
              height: 0.5,
              color: kLGreyColor,
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  sizeChart==false?sizeChart=true:sizeChart=false;
                });
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kPrimaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/icons/measure.png",
                    height: 24,
                      color: kWhiteColor,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: Text("Size Chart",
                        style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          fontFamily: "fairplay",
                        ),),
                    ),
                    Image.asset("assets/images/icons/download.png",
                      height: 24,
                      color: kWhiteColor,
                    ),
                  ],
                ),

              ),
            ),
            SizedBox(
              height: 10,
            ),
            sizeChart==true?Container(
              width: MediaQuery.of(context).size.width*0.85,
              child: Container(
                width: MediaQuery.of(context).size.width*0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(

                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/sizeChart.png"),
                              fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 0.5,
                              color: kGreyColor
                            )
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                           color: kLGreyColor.withOpacity(0.2)
                          ),
                          child: Center(
                            child: Text("Click to view",
                              style: TextStyle(
                                color: kLGreyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "fairplay",
                              ),),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          color: kBlackColor,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              kGreyColor,
                              kBlackColor,
                              kBlackColor,
                            ]
                          )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("assets/images/icons/download.png",
                              height: 18,
                              color: kWhiteColor,),
                              Text("Download",
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "fairplay",
                                ),),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),Column(

                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 0.5,
                              color: kGreyColor
                            ),
                            image: DecorationImage(
                                image: AssetImage("assets/images/sizeChart.png"),
                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                           color: kLGreyColor.withOpacity(0.2)
                          ),
                          child: Center(
                            child: Text("Click to view",
                              style: TextStyle(
                                color: kLGreyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "fairplay",
                              ),),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          color: kBlackColor,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              kGreyColor,
                              kBlackColor,
                              kBlackColor,
                            ]
                          )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("assets/images/icons/download.png",
                              height: 18,
                              color: kWhiteColor,),
                              Text("Download",
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "fairplay",
                                ),),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ):Container(),
            SizedBox(
              height: 10,
            ),

            GestureDetector(
              onTap: (){
                setState(() {
                  catalogue==false?catalogue=true:catalogue=false;
                });
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kPrimaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/icons/pdf.png",
                      height: 24,
                      color: kWhiteColor,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: Text("Catalogue",
                        style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          fontFamily: "fairplay",
                        ),),
                    ),
                    Image.asset("assets/images/icons/download.png",
                      height: 24,
                      color: kWhiteColor,
                    ),
                  ],
                ),

              ),
            ),
            SizedBox(
              height: 10,
            ),
            catalogue==true?Container(
              width: MediaQuery.of(context).size.width*0.85,

              child: Column(
                children: [
                  Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width*0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/images/d.png"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kLGreyColor.withOpacity(0.2)
                        ),
                        child: Center(
                          child: Text("Click to view",
                            style: TextStyle(
                              color: kLGreyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "fairplay",
                            ),),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kBlackColor,
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  kGreyColor,
                                  kBlackColor,
                                  kBlackColor,
                                ]
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/icons/download.png",
                              height: 18,
                              color: kWhiteColor,),
                            Text("Download",
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "fairplay",
                              ),),
                          ],
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ):Container(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  videos==false?videos=true:videos=false;
                });
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kPrimaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/icons/vid.png",
                      height: 24,
                      color: kWhiteColor,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: Text("Videos",
                        style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          fontFamily: "fairplay",
                        ),),
                    ),
                    Image.asset("assets/images/icons/download.png",
                      height: 24,
                      color: kWhiteColor,
                    ),
                  ],
                ),

              ),
            ),

            SizedBox(
              height: 20,
            ),
            videos==true?Container(
              width: MediaQuery.of(context).size.width*0.85,

              child: Column(
                children: [
                  Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width*0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/images/c.png"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kLGreyColor.withOpacity(0.2)
                        ),
                        child: Center(
                          child: Text("Click to view",
                            style: TextStyle(
                              color: kLGreyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "fairplay",
                            ),),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kBlackColor,
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  kGreyColor,
                                  kBlackColor,
                                  kBlackColor,
                                ]
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/icons/download.png",
                              height: 18,
                              color: kWhiteColor,),
                            Text("Download",
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "fairplay",
                              ),),
                          ],
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ):Container(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
