import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/widgets/text/get_goal_gradient_text.dart';

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
    this.isDisableColor = false,
    this.ontap,
  });

  final String icon;
  final String onSelectedIcon;
  final String? title;
  final int position;
  final int? currentIndex;
  final double? size;
  final Color? color;
  final bool? isDisableColor;
  final GestureTapCallback? ontap;

  @override
  Widget build(BuildContext context) {
    bool isCurrentPage = position == currentIndex;

    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          isCurrentPage || isDisableColor!
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
          position == 2 ? const SizedBox() : const SizedBox(height: 4),
          position == 2
              ? const SizedBox()
              : GetGoalGradientText(
                  title ?? '',
                  style: description().copyWith(
                    color: isCurrentPage
                        ? AppColors.primary
                        : AppColors.description,
                  ),
                  gradient: isCurrentPage
                      ? [AppColors.primary, AppColors.primary2]
                      : [AppColors.description, AppColors.description],
                ),
        ],
      ),
    );
  }
}
