import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../../../../../../shared/icon.dart';
import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/widgets/icon/custom_icon.dart';

class PreferenceChip extends StatelessWidget {
  const PreferenceChip({
    super.key,
    required this.labelName,
    required this.isSelected,
    required this.onTab,
  });

  final String labelName;
  final bool isSelected;
  final Function(bool) onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTab(!isSelected),
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          border: isSelected
              ? GradientBoxBorder(
                  gradient: AppColors.primaryGradient,
                )
              : null,
          borderRadius: BorderRadius.circular(48),
          color: AppColors.secondary,
          boxShadow: AppShadow.shadow,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            isSelected
                ? const CustomIcon(
                    icon: AppIcon.check_icon,
                    size: 16,
                  )
                : const SizedBox(width: 0),
            SizedBox(width: isSelected ? 4 : 0),
            Text(
              labelName,
              style: footnoteRegular(),
            ),
          ],
        ),
      ),
    );
  }
}
