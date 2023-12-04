import 'package:flutter/material.dart';

import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';

class ListTaskForPlanning extends StatelessWidget {
  const ListTaskForPlanning({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
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
              Icon(Icons.edit),
            ],
          ),
        ),
      ],
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tune Your Guitar',
          style: body2(),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        Text(
          '(icon) 1/10/2023',
          style: description().copyWith(color: AppColors.description),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        Text(
          '(icon) start_time - enddate_endtime',
          style: description().copyWith(color: AppColors.description),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
