import 'package:flutter/material.dart';
import 'package:pikmee/ui/costants/constants.dart';
import 'package:pikmee/ui/reseller/navigation/collections/collections.dart';
import 'package:pikmee/ui/reseller/navigation/home/home.dart';
import 'package:pikmee/ui/reseller/navigation/myProfile/myProfile.dart';
import 'package:pikmee/ui/reseller/navigation/notification/notification.dart';


class RNavigation extends StatefulWidget {
  @override
  _RNavigationState createState() => _RNavigationState();
}

class _RNavigationState extends State<RNavigation> {
  int _selectedIndex=0;
  var list = [
    RHome(),
    RCollections(),
    RNotifications(),
    RMyProfile(),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: Color(0xeffe3963),

        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          backgroundColor: Colors.transparent,
          selectedItemColor: kWhiteColor,
          unselectedItemColor: kWhiteColor.withOpacity(0.5),
          selectedLabelStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.width*0.03,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.width*0.03,
            color: kWhiteColor.withOpacity(0.5)
          ),
          showUnselectedLabels: true,
          onTap: (list) {
            // Respond to item press.
            setState(() => _selectedIndex = list);
          },
          items: [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home_outlined)
            ),
            BottomNavigationBarItem(
                label: "Categories",
                icon: Icon(Icons.widgets_outlined),
                activeIcon: Icon(Icons.widgets_outlined)
            ),
            BottomNavigationBarItem(
                label: "Notification",
                icon: Icon(Icons.notifications_active_outlined),
                activeIcon: Icon(Icons.notifications_active_outlined)
            ), BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person_outline)
            ),

          ],
        ),
        body: Stack(
          children: [
                Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color:  kWhiteColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50)
                    )
                ),),
        list[_selectedIndex],
              ],
        ),



      ),
    );
  }
}
