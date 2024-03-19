import 'package:flutter/material.dart';
import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({
    super.key,
    required this.title,
    this.onTapped,
    this.selected,
    this.currentIndex,
  });

  final String title;
  final Function()? onTapped;
  final int? selected;
  final int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: selected == currentIndex
                ? [
                    AppColors.primary,
                    AppColors.primary2,
                  ]
                : [
                    AppColors.secondary,
                    AppColors.secondary,
                  ],
          ),
          borderRadius: BorderRadius.circular(24),
          boxShadow: AppShadow.shadow,
        ),
        height: 32,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              style: caption1Regular().copyWith(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
