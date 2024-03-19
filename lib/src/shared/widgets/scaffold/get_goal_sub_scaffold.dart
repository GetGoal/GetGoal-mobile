import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../icon.dart';
import '../../themes/color.dart';
import '../../themes/font.dart';
import '../button/circle_button.dart';
import '../icon/custom_icon.dart';

class GetGoalSubScaffold extends StatelessWidget {
  const GetGoalSubScaffold({
    super.key,
    required this.body,
    this.appbarTitle,
    this.bottomNavigationBar,
    this.onGoBack,
  });

  final Widget body;
  final String? appbarTitle;
  final Widget? bottomNavigationBar;
  final Function()? onGoBack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Row(
          children: [
            CircleButton(
              onTap: onGoBack ?? () => context.pop(true),
              icon: CustomIcon(
                icon: AppIcon.back_icon,
                size: 24,
                iconColor: AppColors.white,
              ),
              color: AppColors.secondary,
            ),
            const SizedBox(width: 16),
            Text(
              appbarTitle ?? '',
              style: title1Bold().copyWith(color: AppColors.white),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
