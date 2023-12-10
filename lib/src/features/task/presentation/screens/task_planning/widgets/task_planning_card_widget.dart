import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../../../shared/icon.dart';
import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';

class TaskPlanningCard extends StatelessWidget {
  const TaskPlanningCard({
    super.key,
    required this.taskNumber,
    required this.taskName,
    this.startTime,
  });

  final int taskNumber;
  final String taskName;
  final String? startTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
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
        color: AppColors.primary,
        shape: BoxShape.circle,
      ),
      child: Center(child: Text('$taskNumber')),
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
            style: body2(),
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
          // Row(
          //   children: [
          //     SvgPicture.asset(
          //       AppIcon.duration_time_icon,
          //       height: 16,
          //       colorFilter: isEndTimeEmpty
          //           ? ColorFilter.mode(AppColors.red, BlendMode.srcIn)
          //           : ColorFilter.mode(AppColors.description, BlendMode.srcIn),
          //     ),
          //     const SizedBox(
          //       width: 4,
          //     ),
          //     Text(
          //       isEndTimeEmpty
          //           ? '-'
          //           : DateFormat('dd/MM/yyyy').format(DateTime.parse(endTime!)),
          //       style: isEndTimeEmpty
          //           ? description().copyWith(color: AppColors.red)
          //           : description().copyWith(color: AppColors.description),
          //       overflow: TextOverflow.ellipsis,
          //       maxLines: 2,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

Widget _editButton() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset(
        AppIcon.edit_task_icon,
        height: 16,
      ),
    ],
  );
}
