import 'package:flutter/material.dart';

import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/widgets/text/get_goal_gradient_text.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.stroke)),
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
      style: bodyBold().copyWith(color: AppColors.description),
    );
  }

  Widget _buildStat() {
    return GetGoalGradientText(
      count,
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
      ),
    );
  }
}
