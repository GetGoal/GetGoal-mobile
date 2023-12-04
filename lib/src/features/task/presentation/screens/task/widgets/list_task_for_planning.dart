import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../shared/icon.dart';
import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/widgets/button/done_button.dart';

class ListTaskForPlanning extends StatelessWidget {
  const ListTaskForPlanning({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      // height: MediaQuery.of(context).size.height * 0.15,
      margin: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
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
      child: const Center(child: Text('1')),
    );
  }

  Widget _taskDetail() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tune Your Guitar',
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
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                '1/10/2023',
                style: description().copyWith(color: AppColors.description),
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
                '1 PM - 1.30 PM',
                style: description().copyWith(color: AppColors.description),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          ),
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
