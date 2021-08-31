import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_apps/widgets/custom_icon_button.dart';

import '../../../constants.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Explore',
          style: kHeadingStyle,
        ),
        CustomIconButton(
          transparent: false,
          icon: SvgPicture.asset('assets/icons/eva_bell-outline.svg'),
        ),
      ],
    );
  }
}
