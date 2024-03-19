import 'package:flutter/material.dart';

import '../../../../config/i18n/strings.g.dart';
import '../../../../shared/themes/spacing.dart';
import '../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import 'widgets/notification_card.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: context.t.notification.page_title,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 24),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
            shrinkWrap: true,
            itemCount: 2,
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              return NotificationCard(title: 'test');
            },
          ),
        ),
      ),
    );
  }
}
