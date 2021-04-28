import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pikmee/ui/channelPartner/myBag/myBag.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/slider/slider.dart';

class CPProductDetailPage extends StatefulWidget {
  @override
  _CPProductDetailPageState createState() => _CPProductDetailPageState();
}

class _CPProductDetailPageState extends State<CPProductDetailPage> {

  List des = [
    " from trary range of",
    "distingh  our range of",
    "from the rest with range of",
    "disti reange of",
    "distiry range of",
    "distinguished from the rest wi of",
    "distcontemporary  of",
    "dimporary range of",
    "di our contemporary range of",
    "distinguisheur contemporary range of",
    "distinguished frur contemporary range of",
    "distinguished from range of",
    "distinguishange of",
    "distinguis mporary range of",
  ];
  List des1 = [
    "SKE",
    "CATEGORY",
    "TAGS",
  ];
  List size = [
    "S",
    "M",
    "L",
    "XL",
    "XXL",
    "XXL",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,

      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.7,
                        child: Stack(
                          children: [
                              Container(
                              width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height*0.7,
                              decoration: BoxDecoration(
                                  color: kWhiteColor,

                              ),
                                child: CarouselSlider(

                                  options: CarouselOptions(
                                    height: MediaQuery.of(context).size.height*0.7,
                                    autoPlay: true,
                                    viewportFraction: 1,
                                    autoPlayInterval: Duration(seconds: 4),
                                    autoPlayAnimationDuration:
                                    Duration(milliseconds: 800),
                                    autoPlayCurve: Curves.easeIn,
                                    pauseAutoPlayOnTouch: true,
                                    aspectRatio: 16/9,
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
                            Positioned(
                              top: 20,
                              left: 20,
                              child: Container(
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
                            ),),
                            Positioned(
                              bottom: 10,
                              right: 10,
                              child: Container(
                                height: 50,
                                width: 50,
                              decoration: BoxDecoration(
                                  color: kWhiteColor.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(50)),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.share_outlined),
                                color: kBlackColor,
                                iconSize: 24,
                              ),
                            ),),

                            Positioned(
                              bottom: 70,
                              right: 10,
                              child: Container(
                                height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: kWhiteColor.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(50)),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Center(
                                  child: Image.asset("assets/images/icons/download.png",
                                  color: kBlackColor,
                                  height: 20,),
                                ),
                              ),
                            ),),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: kLightColor.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(50)),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Center(
                                  child: Image.asset("assets/images/icons/bag.png",
                                  color: kPrimaryColor,
                                  height: 20,),
                                ),
                              ),
                            ),)
                            ],
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            color: kLightColor.withOpacity(0.15),
                            height: 100,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,

                            decoration: BoxDecoration(
                              color: kWhiteColor,

                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30),
                            ),
                          ),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: Container(

                                      width: MediaQuery.of(context).size.width*0.5,
                                      height: 2,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: kLGreyColor.withOpacity(0.7)
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width*0.6,
                                      child:   Text("Highline Premium Tipped Polo T- shirt Apple Green With White",
                                        style: TextStyle(
                                            color: kBlackColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width*0.6,
                                      child:   Text("Highline Tipped Polo T-Shirt",
                                        style: TextStyle(
                                            color: kLGreyColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width*0.1,
                                      right: MediaQuery.of(context).size.width*0.1,
                                    ),
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                          color: Colors.lightGreen,
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                            child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.all(4.0),
                                                child: Text("  In Stock   ",
                                                  style: TextStyle(
                                                      color: kWhiteColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500),),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: kLGreyColor.withOpacity(0.1),
                                                borderRadius: BorderRadius.circular(30)
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.all(4.0),
                                                child: Text("     Available Quantity     ",
                                                  style: TextStyle(
                                                      color: kGreyColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500),),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width*0.1,
                                      right: MediaQuery.of(context).size.width*0.1,
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
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width*0.1,
                                      right: MediaQuery.of(context).size.width*0.05,
                                    ),
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context).size.width*0.1,

                                            child: Text("SIZES",
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 12,
                                                  decoration: TextDecoration.underline,
                                                  fontWeight: FontWeight.w500),),
                                          ),
                                         Container(
                                           width: MediaQuery.of(context).size.width*0.1,

                                           child: Text("IN-STOCK",
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 12,
                                                  decoration: TextDecoration.underline,
                                                  fontWeight: FontWeight.w500),),
                                         ),
                                         Container(

                                           child: Text("IN-\nPRODUCTION",
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 12,
                                                  decoration: TextDecoration.underline,
                                                  fontWeight: FontWeight.w500),),
                                         ),
                                         Container(
                                           width: MediaQuery.of(context).size.width*0.18,
                                           child: Text("ORDER",
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 12,
                                                  decoration: TextDecoration.underline,
                                                  fontWeight: FontWeight.w500),),
                                         ),

                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: MediaQuery.of(context).size.width*0.1,
                                        right: MediaQuery.of(context).size.width*0.05,
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 240,
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
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                  children: [
                                                    Container(
                                                      width: MediaQuery.of(context).size.width*0.08,
                                                      child: Text("${size[index]}",
                                                        style: TextStyle(
                                                            color: kBlackColor,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500),),
                                                    ), Container(
                                                      width: MediaQuery.of(context).size.width*0.08,
                                                      child: Text("200",
                                                        style: TextStyle(
                                                            color: kBlackColor,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500),),
                                                    ), Container(
                                                      width: MediaQuery.of(context).size.width*0.1,
                                                      child: Text("200",
                                                        style: TextStyle(
                                                            color: kBlackColor,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500),),
                                                    ), Container(
                                                      width: MediaQuery.of(context).size.width*0.2,
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.96,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 0.5,
                            color: kLGreyColor
                          )
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width*0.05,
                            right: MediaQuery.of(context).size.width*0.1,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text("Delivery Details",
                                style: TextStyle(
                                    color: kLGreyColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset("assets/images/icons/pin.png",
                                        height: 24,
                                        color: kPrimaryColor,),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Delivering to 131211",
                                        style: TextStyle(
                                            color: kBlackColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                  Text("CHANGE",
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 14,
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w500),),

                                      ],
                              ),

                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.96,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 0.5,
                            color: kLGreyColor
                          )
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width*0.05,
                            right: MediaQuery.of(context).size.width*0.1,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset("assets/images/icons/des.png",
                                  height: 24,
                                  color: kPrimaryColor,),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("PRODUCT DESCRIPTION",
                                  style: TextStyle(
                                        color: kBlackColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),),
                                      ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width*0.1
                                ),
                                child: Text("Get distinguished from the rest with our contemporary range of "
                                    "Get distinguished from the rest with our contemporary range of Get"
                                    " distinguished from the rest with our contemporary range of Get"
                                    " distinguished from the rest with our contemporary range of "
                                    " Guide",
                                  style: TextStyle(
                                      color: kLGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.96,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 0.5,
                            color: kLGreyColor
                          )
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width*0.05,
                            right: MediaQuery.of(context).size.width*0.1,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset("assets/images/icons/des.png",
                                  height: 24,
                                  color: kPrimaryColor,),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("PRODUCT SPECIFICATION",
                                  style: TextStyle(
                                        color: kBlackColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),),
                                      ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 300,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width*0.1
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(child: ListView.builder(
                                          itemCount: des.length,
                                          physics: NeverScrollableScrollPhysics(),
                                          itemBuilder: (BuildContext context, int index){
                                        return Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 5,
                                                height: 5,
                                                decoration: BoxDecoration(
                                                  color: kLGreyColor,
                                                  borderRadius: BorderRadius.circular(20)
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                width: MediaQuery.of(context).size.width*0.65,

                                                child: Text("${des[index]}",
                                                  style: TextStyle(
                                                      color: kLGreyColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w400),),
                                              ),
                                            ],
                                          ),
                                        );
                                      }))
                                    ],
                                  )
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.96,
                        decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 0.5,
                                color: kLGreyColor
                            )
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(

                              height: 80,
                              child: Column(
                                children: [
                                  Expanded(child: ListView.builder(
                                      itemCount: 3,
                                      physics: NeverScrollableScrollPhysics(),

                                      itemBuilder: (BuildContext context, int index){
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            left: MediaQuery.of(context).size.width*0.05,
                                            right: MediaQuery.of(context).size.width*0.05,
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context).size.width*0.8,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("${des1[index]} :",
                                                  style: TextStyle(
                                                      color: kLGreyColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600),),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context).size.width*0.6,

                                                  child: Text("${des[index]}",
                                                    style: TextStyle(
                                                        color: kLGreyColor,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w400),),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }))
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                            return CPMyBag();
                          }));
                        },
                        child: Container(

                            height: MediaQuery.of(context).size.height*0.08,
                            width: MediaQuery.of(context).size.width*0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: kPrimaryColor
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              Image.asset("assets/images/icons/bag.png",
                              color: kWhiteColor,
                              height: 18,),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text("ADD TO BAG",
                              style: TextStyle(
                                    color: kWhiteColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),),
                                  ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
