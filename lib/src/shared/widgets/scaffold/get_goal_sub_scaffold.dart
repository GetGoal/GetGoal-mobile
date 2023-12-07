import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../icon.dart';
import '../../themes/color.dart';
import '../button/circle_button.dart';

class GetGoalSubScaffold extends StatelessWidget {
  const GetGoalSubScaffold({super.key, required this.body});

  final Widget body;

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
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: body,
    );
  }
}
