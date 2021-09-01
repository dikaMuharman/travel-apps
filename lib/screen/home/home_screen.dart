import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_apps/constants.dart';
import 'package:travel_apps/models/Wisata.dart';
import 'package:travel_apps/widgets/custom_icon_button.dart';

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
          margin: EdgeInsets.symmetric(horizontal: 32),
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
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff6D9CB1).withOpacity(.4),
                            offset: Offset(0, 10),
                            blurRadius: 20,
                          )
                        ],
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          "assets/images/madrid.jpg",
                          height: 430,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      left: 70,
                      child: Text(
                        'Madrid',
                        style: kTitleStyle.copyWith(color: Colors.white),
                      ),
                    ),
                    Positioned(
                      bottom: 9,
                      left: 14,
                      width: 44,
                      height: 44,
                      child: Container(
                        width: 44,
                        height: 44,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: SvgPicture.asset(
                            'assets/icons/cil_location-pin.svg'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
