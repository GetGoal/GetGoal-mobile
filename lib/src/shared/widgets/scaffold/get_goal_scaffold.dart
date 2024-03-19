import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../icon.dart';
import '../../themes/color.dart';
import '../../themes/font.dart';
import '../button/circle_button.dart';
import '../icon/custom_icon.dart';

class GetGoalScaffold extends StatelessWidget {
  const GetGoalScaffold({
    super.key,
    required this.body,
    this.appbarTitle,
    this.pageDescription,
    this.bottomNavigationBar,
    this.isShowBackButton = true,
    this.isGredientBackground = false,
    this.onGoBack,
  });

  final Widget body;
  final String? appbarTitle;
  final String? pageDescription;
  final Widget? bottomNavigationBar;
  final bool? isShowBackButton;
  final bool? isGredientBackground;
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
              colors: isGredientBackground!
                  ? [AppColors.lightOrange, AppColors.lightDarkBlue]
                  : [AppColors.background, AppColors.background],
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
                SingleChildScrollView(
                  child: body,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  Widget _buildAppbar(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            isShowBackButton!
                ? CircleButton(
                    onTap: onGoBack ?? () => context.pop(true),
                    icon: CustomIcon(
                      icon: AppIcon.back_icon,
                      size: 24,
                      iconColor: AppColors.white,
                    ),
                    color: AppColors.secondary,
                  )
                : const SizedBox(),
            SizedBox(width: isShowBackButton! ? 16 : 0),
            Text(
              appbarTitle ?? '',
              style: title1Bold().copyWith(color: AppColors.white),
            ),
          ],
        ),
        pageDescription != null
            ? Text(
                pageDescription!,
                style: footnoteRegular().copyWith(color: AppColors.description),
              )
            : const SizedBox(),
      ],
    );
  }
}
