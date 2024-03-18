import 'package:flutter/material.dart';

import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/widgets/text/get_goal_gradient_text.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, this.number, this.taskName, this.taskDesc});

  final int? number;
  final String? taskName;
  final String? taskDesc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        boxShadow: AppShadow.shadow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Task $number',
            style: caption2Regular().copyWith(color: AppColors.description),
          ),
          const SizedBox(height: 8),
          GetGoalGradientText(
            taskName ?? '',
            style: bodyBold(),
          ),
          const SizedBox(height: 8),
          Text(
            taskDesc ?? '',
            style: subHeadlineRegular(),
          ),
        ],
      ),
    );
  }
}
