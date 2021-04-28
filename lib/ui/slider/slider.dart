import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';

int currentIndex = 0;
List cardList = [Item1(), Item2(), Item3(), Item4()];
List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // stops: [
            //   0.3,
            //   1
            // ],
            colors: [
              kDarkColor,
              kPrimaryColor,
              kLightColor,
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
          image: AssetImage("assets/images/2man.png"),
            fit: BoxFit.cover,
      )
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // stops: [
            //   0.3,
            //   1
            // ],
            colors: [
              kDarkColor,
              kPrimaryColor,
              kLightColor,
            ],
          ),
          image: DecorationImage(
            image: AssetImage("assets/images/man.png"),
            fit: BoxFit.cover,
          ),
         borderRadius: BorderRadius.circular(10)

      ),

    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // stops: [
            //   0.3,
            //   1
            // ],
            colors: [
              kDarkColor,
              kPrimaryColor,
              kLightColor,
            ],
          ),
          image: DecorationImage(
            image: AssetImage("assets/images/fab.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20)

      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // stops: [
            //   0.3,
            //   1
            // ],
            colors: [
              kDarkColor,
              kPrimaryColor,
              kLightColor,
            ],
          ),
          borderRadius: BorderRadius.circular(20),

        image: DecorationImage(
          image: AssetImage("assets/images/man.png"),
          fit: BoxFit.cover,
        ),

      ),
    );
  }
}
