import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.icon,
    required this.onSelectedIcon,
    this.title,
    required this.position,
    this.currentIndex,
    this.size = 24,
    this.color,
    this.ontap,
  });

  final String icon;
  final String onSelectedIcon;
  final String? title;
  final int position;
  final int? currentIndex;
  final double? size;
  final Color? color;
  final GestureTapCallback? ontap;

  @override
  Widget build(BuildContext context) {
    bool isCurrentPage = position == currentIndex;

    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          isCurrentPage
              ? SvgPicture.asset(
                  onSelectedIcon,
                  fit: BoxFit.scaleDown,
                  height: size,
                )
              : SvgPicture.asset(
                  icon,
                  fit: BoxFit.scaleDown,
                  height: size,
                  colorFilter: ColorFilter.mode(
                    color ?? AppColors.description,
                    BlendMode.srcIn,
                  ),
                ),
          const SizedBox(height: 4),
          Text(
            title ?? '',
            style: description().copyWith(
              color: isCurrentPage ? AppColors.primary : AppColors.description,
            ),
          ),
        ],
      ),
    );
  }
}
