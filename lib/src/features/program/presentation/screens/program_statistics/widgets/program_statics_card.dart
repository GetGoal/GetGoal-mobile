import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';

class ProgramStatisticsCard extends StatelessWidget {
  const ProgramStatisticsCard({
    super.key,
    required this.label,
    required this.count,
  });

  final String label;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        border: GradientBoxBorder(gradient: AppColors.primaryGradient),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLabel(),
          const SizedBox(height: 24),
          _buildStat(),
        ],
      ),
    );
  }

  Widget _buildLabel() {
    return Text(
      label,
      style: subHeadlineBold().copyWith(color: AppColors.description),
    );
  }

  Widget _buildStat() {
    return Text(
      count,
      style: title2Bold(),
    );
  }
}
