import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../../../../shared/icon.dart';
import '../../../../../../../shared/themes/color.dart';
import '../../../../../../../shared/themes/font.dart';
import '../../../../../../../shared/widgets/icon/custom_icon.dart';
import '../../../../../../../shared/widgets/text/get_goal_gradient_text.dart';

enum TASKSTATUS {
  todo,
  done,
}

class TodoTask extends StatelessWidget {
  const TodoTask({
    super.key,
    this.taskName,
    this.taskDescription,
    this.startTime,
    this.endTime,
    this.category,
    this.taskStatus,
    this.ontap,
    this.onEdit,
    this.onDoneTapped,
    this.onUnDoneTapped,
  });

  final String? taskName;
  final String? taskDescription;
  final String? startTime;
  final String? endTime;
  final String? category;
  final TASKSTATUS? taskStatus;
  final GestureTapCallback? ontap;
  final GestureTapCallback? onEdit;
  final GestureTapCallback? onDoneTapped;
  final GestureTapCallback? onUnDoneTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 48,
                child: GetGoalGradientText(
                  DateFormat.jm().format(DateTime.parse(startTime!)),
                  textAlign: TextAlign.center,
                  style: bodyBold(),
                  gradient: taskStatus == TASKSTATUS.todo
                      ? null
                      : [AppColors.description, AppColors.description],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _taskName(),
                    const SizedBox(height: 4),
                    _taskDescription(),
                    const SizedBox(height: 4),
                    _taskCategory(),
                  ],
                ),
              ),
              const Spacer(),
              _taskCircle(taskStatus!),
            ],
          ),
        ),
      ),
    );
  }

  Widget _taskCircle(TASKSTATUS taskstatus) {
    switch (taskstatus) {
      case TASKSTATUS.todo:
        return GestureDetector(
          onTap: onDoneTapped,
          child: Container(
            width: 24,
            height: 62,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primary2),
            ),
          ),
        );
      case TASKSTATUS.done:
        return GestureDetector(
          onTap: onUnDoneTapped,
          child: Container(
            width: 24,
            height: 62,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary2,
              boxShadow: AppShadow.shadow,
            ),
            child: CustomIcon(
              icon: AppIcon.check_icon,
              iconColor: AppColors.white,
              size: 16,
            ),
          ),
        );
      default:
        return const SizedBox();
    }
  }

  Widget _taskName() {
    return Text(
      taskName ?? '',
      style: bodyBold().copyWith(
        color: taskStatus == TASKSTATUS.todo
            ? AppColors.white
            : AppColors.description,
      ),
    );
  }

  Widget _taskDescription() {
    return Text(
      taskDescription ?? '-',
      style: caption1Regular().copyWith(
        color: taskStatus == TASKSTATUS.todo
            ? AppColors.white
            : AppColors.description,
      ),
    );
  }

  Widget _taskCategory() {
    return Text(
      category ?? '-',
      style: caption1Regular().copyWith(
        color: AppColors.description,
      ),
    );
  }

  Widget _taskDuration(TASKSTATUS taskstatus) {
    switch (taskstatus) {
      case TASKSTATUS.todo:
        return Row(
          children: [
            SvgPicture.asset(
              AppIcon.duration_time_icon,
              height: 16,
              colorFilter: ColorFilter.mode(
                AppColors.description,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              startTime != null
                  ? DateFormat.jm().format(
                      DateTime.parse(startTime!),
                    )
                  : 'Unknown',
              style: description().copyWith(color: AppColors.description),
            ),
          ],
        );
      default:
        return const SizedBox();
    }
  }

  Widget _taskEditButton() {
    return GestureDetector(
      onTap: onEdit,
      child: SvgPicture.asset(
        AppIcon.edit_task_icon,
        height: 16,
      ),
    );
  }
}
