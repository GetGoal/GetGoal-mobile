import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../themes/color.dart';
import '../../themes/font.dart';
import '../text/get_goal_gradient_text.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({super.key, this.errorMessage, this.title});

  final String? errorMessage;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.secondary,
      content: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? 'Something went wrong.',
              style: title2Bold().copyWith(
                  // color: AppColors.primary2,
                  ),
            ),
            const SizedBox(height: 16),
            Text(errorMessage ?? '', style: subHeadlineRegular()),
            const SizedBox(height: 40),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GestureDetector(
                onTap: () => context.pop(),
                child: GetGoalGradientText(
                  'Close',
                  style: bodyRegular(),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
