import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/reseller/navigation/drawer.dart';
import 'package:pikmee/ui/slider/slider.dart';

class RHome extends StatefulWidget {

  @override
  _RHomeState createState() => _RHomeState();
}

class _RHomeState extends State<RHome> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: Color(0xeffe3963),

      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 120,
        centerTitle: true,

        title: Image.asset("assets/images/logoDeatail.png",
          height: 95,
        fit: BoxFit.contain,),
        backgroundColor: kWhiteColor,
        iconTheme: IconThemeData(color: kPrimaryColor),
      ),
      drawer: RCustomDrawer(),
      drawerScrimColor: kLGreyColor.withOpacity(0.7),
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color:  kWhiteColor,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50)
            )
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 1100,
                child: Image.asset("assets/images/a.png",
                  width: MediaQuery.of(context).size.width,

                  fit: BoxFit.scaleDown,),
              ), Positioned(
                top: 1350,
                child: Image.asset("assets/images/e.png",
                  width: MediaQuery.of(context).size.width,

                  fit: BoxFit.scaleDown,),
              ),
              Positioned(
                top: 300,
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/homeBG.png",
                    fit: BoxFit.cover,),
                ),
              ),
              Positioned(
                top: 300,
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white.withOpacity(0.75),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          kLightColor.withOpacity(0.1)
                        ]
                    ),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50)
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: kLGreyColor,
                              width: 0.5
                          )
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(child: TextFormField(

                            cursorColor: kPrimaryColor,
                            decoration: InputDecoration(
                              suffixIconConstraints: BoxConstraints(
                                  maxHeight: 18
                              ),
                              suffixIcon: Transform.rotate(
                                angle: 30,
                                child: Image.asset(
                                  "assets/images/icons/search.png",
                                  color: kLGreyColor,

                                ),
                              ),

                              fillColor: Colors.transparent,
                              hintText: "Search",
                              hintStyle: TextStyle(
                                  color: kLGreyColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color:  Colors.transparent),
                              ),
                            ),
                          ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.9,
                          height: 360,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(20),

                          ),
                        ),Container(
                          width: MediaQuery.of(context).size.width*0.9,
                          height: 360,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(20),

                          ),
                          child: CarouselSlider(
                            options: CarouselOptions(
                              height: 360.0,
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
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.height*0.35,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: kWhiteColor,
                          width: 2
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Text("-Explore By Type-",
                            style: TextStyle(
                                color: kBlackColor,
                                fontSize: 28,
                                fontFamily: "fairplay",
                                fontWeight: FontWeight.w400),),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width:100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: kPrimaryColor.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(100),
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/man.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  Text("Polo T-Shirt",
                                    style: TextStyle(
                                        color: kBlackColor,
                                        fontSize: 14,
                                        fontFamily: "fairplay",
                                        fontWeight: FontWeight.w400),),

                                ],
                              ),Column(
                                children: [
                                  Container(
                                    width:100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: kPrimaryColor.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(100),
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/man.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  Text("Polo T-Shirt",
                                    style: TextStyle(
                                        color: kBlackColor,
                                        fontSize: 14,
                                        fontFamily: "fairplay",
                                        fontWeight: FontWeight.w400),),

                                ],
                              ),Column(
                                children: [
                                  Container(
                                    width:100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: kPrimaryColor.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(100),
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/man.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  Text("Polo T-Shirt",
                                    style: TextStyle(
                                        color: kBlackColor,
                                        fontSize: 14,
                                        fontFamily: "fairplay",
                                        fontWeight: FontWeight.w400),),

                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.4,
                            height: 40,
                            decoration: BoxDecoration(
                                color: kBlackColor,
                                borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.center,
                                colors: [
                                  kBlackColor,
                                  kBlackColor.withOpacity(0.85),
                                  kBlackColor,
                                ]
                              )
                            ),
                            child: Center(
                              child:    Text("Explore more >",
                                style: TextStyle(
                                    color: kWhiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),),

                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.9,
                          height: 200,
                          decoration: BoxDecoration(
                              color: kPrimaryColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/2man.png"),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        Positioned(
                            right: 10,
                            top: 20,
                            child: Column(
                              children: [
                                Text("Super fast",
                                  style: TextStyle(
                                      color: kBlackColor,
                                      fontSize: 28,
                                      fontFamily: "fairplay",
                                      fontWeight: FontWeight.w400),),
                                Text("Delivery",
                                  style: TextStyle(
                                      color: kBlackColor,
                                      fontSize: 28,
                                      fontFamily: "fairplay",
                                      fontWeight: FontWeight.w400),),
                                Text("In Your City",
                                  style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize: 28,
                                      fontFamily: "fairplay",
                                      fontWeight: FontWeight.w400),),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width*0.3,
                                  decoration: BoxDecoration(
                                      color: kWhiteColor,
                                      boxShadow: [
                                        BoxShadow(
                                            color: kWhiteColor,
                                            spreadRadius: 0.2,
                                            blurRadius: 10
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Center(
                                    child:  Text("Shop Now-",
                                      style: TextStyle(
                                          color: kBlackColor,
                                          fontSize: 18,
                                          fontFamily: "fairplay",
                                          fontWeight: FontWeight.w400),),
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),SizedBox(
                      height: 30,
                    ),
                    Text("-Explore By Brand-",
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: 28,
                          fontFamily: "fairplay",
                          fontWeight: FontWeight.w400),),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 500,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Column(
                        children: [
                          Expanded(
                            child: GridView.builder(
                              itemCount: 12,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: (orientation == Orientation.portrait) ? 3 : 3,

                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 4.0,
                                      right: 4.0,
                                      top: 2.0,
                                      bottom: 2.0,
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width*0.45,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.13,
                                            width: MediaQuery.of(context).size.width*0.45,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: AssetImage("assets/images/fas.png"),
                                                    fit: BoxFit.contain
                                                ),
                                                color: kWhiteColor
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
                      width: MediaQuery.of(context).size.width*0.9,
                      height: 200,
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
                      height: 20,
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),

      ),

    );
  }
}
