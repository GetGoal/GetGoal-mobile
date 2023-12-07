import 'package:flutter/material.dart';

import '../../themes/color.dart';
import '../../themes/font.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, this.onTap, required this.buttonText});

  final GestureTapCallback? onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap == null) return;
        onTap!();
      },
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(36),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: body1(),
          ),
        ),
      ),
    );
  }
}
