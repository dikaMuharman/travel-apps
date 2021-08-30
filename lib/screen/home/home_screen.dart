import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_apps/constants.dart';
import 'package:travel_apps/widgets/custom_animated_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final _inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kAccentColor,
        body: getBody(),
        bottomNavigationBar: _buildBottomBar());
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 89,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: false,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
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
  }

  Widget getBody() {
    List<Widget> pages = [
      Container(
        alignment: Alignment.center,
        child: Text(
          "Home",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Destination",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Users",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
