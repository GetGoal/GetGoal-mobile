import 'package:flutter/material.dart';

import '../../../../../../shared/themes/color.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, this.number, this.taskName});

  final int? number;
  final String? taskName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, right: 16, bottom: 8, left: 16),
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: AppColors.primary),
            child: Center(child: Text('$number')),
          ),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              taskName ?? '',
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}
