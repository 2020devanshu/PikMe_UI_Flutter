import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';

class CustomTextField extends StatelessWidget {
  final bool obscure;
  final String name;
  final String image;
  final double height;
  final Color color;
  final double width;

  const CustomTextField({
  this.obscure: false,
    this.name : "",
    this.image: "",
    this.height: 17,
    this.width: 60,
    this.color: Colors.white,

  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 10.0),
      child: Container(
        width:
        MediaQuery.of(context).size.width*0.8,

        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Container(
              width: 26,
              child: Image.asset(image,
              height: height,
              color: kLGreyColor,),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextFormField(

                obscureText: obscure,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  labelText: name,
                  hoverColor: kPrimaryColor,
                  focusColor: kPrimaryColor,
                  fillColor: Colors.transparent,
                  labelStyle: TextStyle(
                      color: kLGreyColor.withOpacity(0.5),
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: color),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: color),
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
