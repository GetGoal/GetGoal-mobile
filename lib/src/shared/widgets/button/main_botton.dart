import 'package:flutter/material.dart';

import '../../themes/color.dart';
import '../../themes/font.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    this.onTap,
    required this.buttonText,
    this.buttonColor,
    this.bottonStock,
    this.textColor,
    this.icon,
    this.isHaveBoxShadow = false,
  });

  final GestureTapCallback? onTap;
  final String buttonText;
  final Color? buttonColor;
  final Color? bottonStock;
  final Color? textColor;
  final Widget? icon;
  final bool? isHaveBoxShadow;

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
          boxShadow: isHaveBoxShadow! ? AppShadow.shadow : null,
          color: buttonColor ?? AppColors.primary,
          borderRadius: BorderRadius.circular(36),
          border:
              bottonStock != null ? Border.all(color: AppColors.stock) : null,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ?? const SizedBox(),
              Text(
                buttonText,
                style: body1().copyWith(color: textColor ?? AppColors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
