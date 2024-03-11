import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../themes/color.dart';
import '../../themes/font.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    super.key,
    this.errorMessage,
  });

  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Something want wrong', style: heading3()),
            const SizedBox(height: 16),
            Text(errorMessage ?? '', style: body1()),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () => context.pop(),
              child: Text(
                'Close',
                style: body1().copyWith(color: AppColors.primary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
