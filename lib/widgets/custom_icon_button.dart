import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  final bool shadow;
  final bool transparent;
  final Widget icon;

  const CustomIconButton({
    Key? key,
    this.shadow = false,
    this.transparent = false,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: transparent ? Colors.white.withOpacity(.7) : Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          if (shadow)
            BoxShadow(
              color: Color(0xff1E1F2E).withOpacity(0.2),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
        ],
      ),
      child: IconButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {},
        icon: icon,
      ),
    );
  }
}
