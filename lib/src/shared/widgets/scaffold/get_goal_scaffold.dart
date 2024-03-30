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
    this.isShowAppbar = true,
    this.onGoBack,
  });

  final Widget body;
  final String? appbarTitle;
  final String? pageDescription;
  final Widget? bottomNavigationBar;
  final bool? isShowBackButton;
  final bool? isGredientBackground;
  final bool? isShowAppbar;
  final Function()? onGoBack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: isShowAppbar!
          ? _buildAppbar(context)
          : const PreferredSize(
              preferredSize: Size.zero,
              child: SizedBox(),
            ),
      body: Container(
        width: MediaQuery.of(context).size.width,
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
            top: 112,
            right: 16,
            bottom: 48,
            left: 16,
          ),
          child: body,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  AppBar _buildAppbar(BuildContext context) {
    return AppBar(
      toolbarHeight: 88,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
              Flexible(
                child: Text(
                  appbarTitle ?? '',
                  style: title1Bold().copyWith(color: AppColors.white),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ],
      ),
      automaticallyImplyLeading: false,
    );
  }
}
