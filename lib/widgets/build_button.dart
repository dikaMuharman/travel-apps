import 'package:flutter/material.dart';
import 'package:travel_apps/constants.dart';

class BuildButton extends StatelessWidget {
  final Icon icon;

  const BuildButton({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: kAccentColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: IconButton(
        onPressed: () {},
        icon: icon,
      ),
    );
  }
}
