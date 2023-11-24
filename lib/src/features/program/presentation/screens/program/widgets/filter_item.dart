import 'package:flutter/material.dart';
import '../../../../../../shared/themes/color.dart';

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
          color: selected == currentIndex ? AppColors.primary : Colors.white,
          borderRadius: BorderRadius.circular(24),
          border: selected == currentIndex
              ? Border.all(color: AppColors.primary, width: 1)
              : Border.all(color: Colors.black12, width: 1),
        ),
        height: 32,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ),
      ),
    );
  }
}
