import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../themes/color.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    this.size,
    this.iconColor,
  });

  final String icon;
  final double? size;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: size,
      fit: BoxFit.scaleDown,
      colorFilter: ColorFilter.mode(
        iconColor ?? AppColors.white,
        BlendMode.srcIn,
      ),
    );
  }
}
