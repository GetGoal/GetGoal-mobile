import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../themes/color.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    this.size,
    this.iconColor,
    this.rotateAngle = 0,
  });

  final String icon;
  final double? size;
  final Color? iconColor;
  final int? rotateAngle;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotateAngle! * math.pi / 180,
      child: SvgPicture.asset(
        icon,
        width: size,
        fit: BoxFit.scaleDown,
        colorFilter: ColorFilter.mode(
          iconColor ?? AppColors.white,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
