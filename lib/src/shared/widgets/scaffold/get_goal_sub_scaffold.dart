import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../icon.dart';
import '../../themes/color.dart';
import '../../themes/font.dart';
import '../button/circle_button.dart';

class GetGoalSubScaffold extends StatelessWidget {
  const GetGoalSubScaffold({
    super.key,
    required this.body,
    this.appbarTitle,
    this.bottomNavigationBar,
  });

  final Widget body;
  final String? appbarTitle;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleButton(
              onTap: () => context.pop(),
              icon: SvgPicture.asset(
                AppIcon.back_icon,
                fit: BoxFit.scaleDown,
                height: 24,
              ),
              border: Border.all(color: AppColors.stock),
            ),
            const SizedBox(width: 16),
            Text(
              appbarTitle ?? '',
              style: heading2(),
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
