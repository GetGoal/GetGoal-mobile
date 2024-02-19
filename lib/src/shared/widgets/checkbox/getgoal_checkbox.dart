import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../icon.dart';
import '../../themes/color.dart';

class GetGoalCheckbox extends StatelessWidget {
  const GetGoalCheckbox({
    super.key,
    this.width = 16,
    this.height = 16,
    this.value = false,
    this.onTap,
  });

  final double? width;
  final double? height;
  final bool value;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
            color: value ? AppColors.primary : AppColors.stock,
          ),
        ),
        child: value
            ? Container(
                decoration: BoxDecoration(
                  color: AppColors.primary,
                ),
                child: SizedBox(
                  child: SvgPicture.asset(
                    AppIcon.check_icon,
                    fit: BoxFit.scaleDown,
                    height: 16,
                  ),
                ),
              )
            : const SizedBox(
                width: 16,
                height: 16,
              ),
      ),
    );
  }
}
