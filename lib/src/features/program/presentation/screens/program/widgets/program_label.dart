import 'package:flutter/material.dart';

import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';

class ProgramLabel extends StatelessWidget {
  const ProgramLabel({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary,
            AppColors.primary2,
          ],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      height: 24,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: caption1Regular(),
          ),
        ),
      ),
    );
  }
}
