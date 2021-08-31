import 'package:flutter/material.dart';
import 'package:travel_apps/widgets/custom_animated_bottom_bar.dart';

import '../../../constants.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedBottomBar(
      containerHeight: 89,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: false,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          iconPath: 'assets/icons/eva_home-outline.svg',
          title: Text('Home'),
          activeColor: kPrimaryColor,
          inactiveColor: Color(0xffAFB0CA),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          iconPath: 'assets/icons/eva_map-outline.svg',
          title: Text('Destination'),
          activeColor: kPrimaryColor,
          inactiveColor: Color(0xffAFB0CA),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          iconPath: 'assets/icons/eva_person-outline.svg',
          title: Text('User'),
          activeColor: kPrimaryColor,
          inactiveColor: Color(0xffAFB0CA),
          textAlign: TextAlign.center,
        ),
      ],
    );
    ;
  }
}
