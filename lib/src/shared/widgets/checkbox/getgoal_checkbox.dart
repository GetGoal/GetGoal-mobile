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
  });

  final double? width;
  final double? height;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          color: value ? AppColors.primary : AppColors.stock,
        ),
      ),
      child: GestureDetector(
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
