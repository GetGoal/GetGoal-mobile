import 'package:flutter/material.dart';

import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';

class ListTaskForPlanning extends StatelessWidget {
  const ListTaskForPlanning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          height: 102,
          width: 353.33,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 169, 195, 216),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: _numberTask(),
                ),
                Expanded(
                  child: _taskDetail(),
                ),
                const Expanded(
                  child: Text('icon edit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _numberTask() {
    return Container(
      margin: const EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        color: AppColors.primary,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _taskDetail() {
    return Column(
      children: [
        Text(
          'Tune Your Guitar',
          style: body2(),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        Text(
          '(icon) 1/10/2023',
          style: description(),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        Text(
          '(icon) start_time - enddate_endtime',
          style: description(),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
