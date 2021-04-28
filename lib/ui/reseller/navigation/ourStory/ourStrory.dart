import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';

class OurStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,

        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                              iconSize: 26,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Our Story",
                            style: TextStyle(
                                color: kBlackColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),),

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
                              height: 26,
                              color: kLightColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: 300,
                  decoration: BoxDecoration(
                    color: kLightColor,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/images/story.png"),
                      fit: BoxFit.cover
                    )
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
                    width: MediaQuery.of(context).size.width*9,
                    child:     Text("Our Profile",
                      style: TextStyle(
                          color: kLightColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline),),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.1,
                    right: MediaQuery.of(context).size.width*0.1,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width*9,
                    child:     Text("World Over, Customized Corporate Apparel is the number one grow"
                        "World Over, Customized Corporate Apparel is the number one grow"
                        "World Over, Customized Corporate Apparel is the number "
                        "one growWorld Over, Customized Corporate Apparel is the number one grow"
                        "",
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                      ),),
                  ),
                ),SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.05,
                    right: MediaQuery.of(context).size.width*0.15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width*8,
                    alignment: Alignment.centerLeft,
                    child:     Image.asset("assets/images/b.png",
                    height: 36,)
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.1,
                    right: MediaQuery.of(context).size.width*0.15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width*9,

                    child:     Text("Our Mission is to deliver a comprehensive apparel solution "
                        "to our customers by providing the complete source for their appreal need.",
                      style: TextStyle(
                          color: kLightColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                      ),),
                  ),
                ),SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.15,
                    right: MediaQuery.of(context).size.width*0.15,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.2,
                        height: 1,
                        color: Colors.grey,
                      ),
                    ],
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
                    width: MediaQuery.of(context).size.width*9,
                    child:     Text("The most common use of customized apparel in the world"
                        " is as uniforms but, it is also widely used for advertising."
                        "The most common use of customized apparel in the world is as uniforms but, "
                        "it is also widely used for advertising."
                        "The most common use of customized apparel in the world is as uniforms but, "
                        "it is also widely used for advertising.",
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                      ),),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
