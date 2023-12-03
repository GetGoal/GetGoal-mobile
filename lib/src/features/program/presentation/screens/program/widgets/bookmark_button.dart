import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../shared/icon.dart';

class BookMarkButton extends StatelessWidget {
  const BookMarkButton({super.key, this.onTap, this.iconData});

  final GestureTapCallback? onTap;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    double size = 36.0;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          AppIcon.bookmark_icon,
          height: 16,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
