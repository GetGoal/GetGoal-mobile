import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../../../shared/icon.dart';
import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/widgets/text/get_goal_gradient_text.dart';

class TaskPlanningCard extends StatelessWidget {
  const TaskPlanningCard({
    super.key,
    required this.taskNumber,
    required this.taskName,
    this.startTime,
    this.onEdit,
  });

  final int taskNumber;
  final String taskName;
  final String? startTime;
  final Function()? onEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        boxShadow: AppShadow.shadow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          _numberTask(),
          const SizedBox(
            width: 8,
          ),
          _taskDetail(),
          const SizedBox(
            width: 8,
          ),
          _editButton(),
        ],
      ),
    );
  }

  Widget _numberTask() {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary,
            AppColors.primary2,
          ],
        ),
      ),
      child: Center(child: Text('$taskNumber', style: bodyBold())),
    );
  }

  Widget _taskDetail() {
    bool isStartTimeEmpty = startTime!.isEmpty;

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            taskName,
            style: bodyBold(),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              SvgPicture.asset(
                AppIcon.calendar_icon,
                height: 16,
                colorFilter: isStartTimeEmpty
                    ? ColorFilter.mode(AppColors.red, BlendMode.srcIn)
                    : ColorFilter.mode(AppColors.description, BlendMode.srcIn),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                isStartTimeEmpty
                    ? '-'
                    : DateFormat('dd/MM/yyyy')
                        .format(DateTime.parse(startTime!)),
                style: isStartTimeEmpty
                    ? description().copyWith(color: AppColors.red)
                    : description().copyWith(color: AppColors.description),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              SvgPicture.asset(
                AppIcon.duration_time_icon,
                height: 16,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                DateFormat.jm().format(DateTime.parse(startTime!)),
                overflow: TextOverflow.ellipsis,
                style: description().copyWith(color: AppColors.description),
                maxLines: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _editButton() {
    return GestureDetector(
      onTap: onEdit,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetGoalGradientText('Edit', style: subHeadlineRegular()),
        ],
      ),
    );
  }
}
