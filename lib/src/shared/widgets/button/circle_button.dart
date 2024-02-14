import 'package:flutter/material.dart';

import '../icon/custom_icon.dart';

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
  final CustomIcon? icon;
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
