import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../../../../shared/icon.dart';
import '../../../../../../../shared/themes/color.dart';
import '../../../../../../../shared/themes/font.dart';

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
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: AppShadow.shadow,
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              _taskCircle(taskStatus!),
              const SizedBox(width: 12),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _taskName(),
                    _taskDescription(),
                    const SizedBox(height: 4),
                    _taskDuration(taskStatus!),
                    const SizedBox(
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: _taskEditButton(),
              ),
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
              border: Border.all(color: AppColors.primary),
            ),
          ),
        );
      case TASKSTATUS.done:
        return GestureDetector(
          onTap: onUnDoneTapped,
          child: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.secondary,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              AppIcon.check_icon,
              fit: BoxFit.scaleDown,
              height: 24,
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
      style: body1(),
    );
  }

  Widget _taskDescription() {
    return Text(
      taskDescription ?? '',
      style: description().copyWith(color: AppColors.description),
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
              DateFormat.jm().format(DateTime.parse(startTime!)),
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
