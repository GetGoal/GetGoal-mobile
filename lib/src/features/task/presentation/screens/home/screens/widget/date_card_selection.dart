import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../../../shared/themes/color.dart';
import '../../../../../../../shared/themes/font.dart';

class DateCardSelection extends StatelessWidget {
  const DateCardSelection({
    super.key,
    required this.day,
    this.isSelected = false,
    this.isToday = false,
  });

  final DateTime day;
  final bool? isSelected;
  final bool? isToday;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: isSelected! || isToday! ? AppShadow.shadow : null,
        borderRadius: BorderRadius.circular(24),
        color: isSelected! || isToday!
            ? AppColors.secondary
            : AppColors.background,
        gradient: isSelected!
            ? LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [AppColors.primary, AppColors.primary2],
              )
            : null,
      ),
      width: 48,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DateFormat('E').format(day),
            style: isSelected!
                ? caption1Bold().copyWith(
                    color:
                        isSelected! ? AppColors.white : AppColors.description,
                  )
                : caption1Regular().copyWith(
                    color:
                        isSelected! ? AppColors.white : AppColors.description,
                  ),
          ),
          const SizedBox(height: 4),
          Text(
            '${day.day}',
            style: bodyBold().copyWith(
              color: isSelected! ? AppColors.white : AppColors.description,
            ),
          ),
        ],
      ),
    );
  }
}
