import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/filter/filterScreen1.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,

      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/1.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.01,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width*0.8,
                      child: Image.asset("assets/images/men.png",
                        fit: BoxFit.contain,
                      ),
                    ),

                    Container(
                      height: MediaQuery.of(context).size.height*0.13,
                      width: MediaQuery.of(context).size.width*0.8,
                      child: Image.asset("assets/images/logoDeatail.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.03,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      child: Text("Welcome you!",
                      style: TextStyle(
                        color: kPrimaryColor,
                          fontSize: MediaQuery.of(context).size.height*0.025,
                        fontWeight: FontWeight.w600
                      ),)
                    ),SizedBox(
                      height: MediaQuery.of(context).size.height*0.01,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      child: Text("India’s largest \nManufacturers of \nblank apparel",
                      style: TextStyle(
                        color: kBlackColor,
                          fontSize: MediaQuery.of(context).size.height*0.032,
                        fontWeight: FontWeight.w800
                      ),)
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.01,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      child: Text("With Ready Stock of\n10 lakhs + Blank Apparel in\nMultiple locations",
                      style: TextStyle(
                        color: kGreyColor,
                        fontSize: MediaQuery.of(context).size.height*0.018,
                        fontWeight: FontWeight.w300
                      ),)
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.03,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return FilterScreen1();
                        }));

                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*0.07,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: kBlackColor,

                              ),
                              child: Center(
                                child: Text(
                                  "Get Started  >",
                                  style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize: MediaQuery.of(context).size.height*0.02,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.01,
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
