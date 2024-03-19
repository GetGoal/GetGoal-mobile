import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../icon.dart';
import '../../themes/color.dart';
import '../../themes/font.dart';
import '../button/circle_button.dart';
import '../icon/custom_icon.dart';

class GetGoalGredientScaffold extends StatelessWidget {
  const GetGoalGredientScaffold({
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
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                AppColors.background2,
                AppColors.background3,
              ],
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(
              top: 72,
              right: 16,
              bottom: 48,
              left: 16,
            ),
            child: Column(
              children: [
                _buildAppbar(context),
                const SizedBox(height: 24),
                body,
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  Widget _buildAppbar(BuildContext context) {
    return Row(
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
    );
  }
}
