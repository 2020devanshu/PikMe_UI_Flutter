import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/reseller/productDetailPage/productDetailPage.dart';

class RProductListingPage extends StatelessWidget {
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
                            Text("Fastess Half Sleeve",
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
                    Container(
                      decoration: BoxDecoration(
                          color: kLightColor.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
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
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                child:  Image.asset(
                  "assets/images/fas.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.6,
                child: Center(
                  child: Text("Choose the Product",
                    style: TextStyle(
                      color: kLightColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: "fairplay",

                    ),),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 0.5,
                color: kLGreyColor,
                width: MediaQuery.of(context).size.width*0.5,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,

                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return RProductDetailPage();
                        }));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*0.17,
                              width: MediaQuery.of(context).size.width*0.45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/man.png"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Fastees Polo T-Shirt",
                                    style: TextStyle(
                                        color: kBlackColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),),
                                  Text("-Royal blue",
                                    style: TextStyle(
                                        color: kLGreyColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
