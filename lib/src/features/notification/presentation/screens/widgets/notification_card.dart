import 'package:flutter/material.dart';

import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.title,
    this.description,
    this.time,
    this.isRead,
  });

  final String title;
  final String? description;
  final DateTime? time;
  final bool? isRead;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        boxShadow: AppShadow.shadow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Notificaition stutus
          Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  gradient: AppColors.primaryGradient,
                  boxShadow: AppShadow.shadow,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                'Upcoming',
                style: caption1Bold().copyWith(color: AppColors.description),
              ),
              const Spacer(),
              Text(
                '5:00 AM',
                style: caption1Regular().copyWith(color: AppColors.description),
              ),
            ],
          ),

          const SizedBox(height: 8),

          //Notification Infomation
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: bodyBold()),
              const SizedBox(height: 4),
              Text(
                description ?? 'No description',
                style: caption1Regular().copyWith(color: AppColors.description),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
