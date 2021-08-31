import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:travel_apps/constants.dart';
import 'package:travel_apps/models/Wisata.dart';

import 'widget/heading_widget.dart';
import 'widget/bottom_navigation_bar.dart';
import 'widget/form_field_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAccentColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: ListView(
            children: [
              SizedBox(
                height: 14,
              ),
              HeadingWidget(),
              SizedBox(
                height: 33,
              ),
              FormFieldWidget(),
              SizedBox(
                height: 23,
              ),
              Expanded(child: Text("hello world")),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

class ImageItemWidget extends StatelessWidget {
  const ImageItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 240,
          height: 350,
          margin: EdgeInsets.only(bottom: 18),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff6D9CB1).withOpacity(0.4),
                offset: Offset(0, 10),
                blurRadius: 10,
              )
            ],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage('assets/images/madrid.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          'Madrid',
          style: kTitleStyle,
        ),
      ],
    );
  }
}
