import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../themes/color.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    this.onTap,
    this.icon,
    this.size = 36.0,
    this.color = Colors.white,
    this.border,
  });

  final GestureTapCallback? onTap;
  final SvgPicture? icon;
  final double? size;
  final Color? color;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          border: border,
          color: color,
          shape: BoxShape.circle,
        ),
        child: icon,
      ),
    );
  }
}
