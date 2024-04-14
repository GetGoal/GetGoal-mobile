import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/widgets/text/get_goal_gradient_text.dart';

class CalendarTask extends StatelessWidget {
  const CalendarTask({
    super.key,
    required this.taskName,
    this.category,
    required this.startTime,
  });

  final String taskName;
  final String? category;
  final String startTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          border: Border(left: BorderSide(color: AppColors.primary2, width: 3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _taskStartTime(),
            const SizedBox(height: 4),
            _taskName(),
            const SizedBox(height: 4),
            _taskCategory(),
          ],
        ),
      ),
    );
  }

  Widget _taskStartTime() {
    return Row(
      children: [
        SizedBox(
          child: GetGoalGradientText(
            DateFormat.jm().format(DateTime.parse(startTime)),
            style: bodyBold(),
          ),
        ),
      ],
    );
  }

  Widget _taskName() {
    return SizedBox(
      child: Text(
        taskName,
        style: bodyRegular(),
      ),
    );
  }

  Widget _taskCategory() {
    return Text(
      category ?? 'No description',
      style: caption1Regular().copyWith(color: AppColors.description),
    );
  }
}
