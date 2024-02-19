import 'package:flutter/material.dart';

import '../../themes/color.dart';
import '../../themes/font.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    this.onTap,
    this.buttonText,
    this.buttonColor,
    this.bottonStock,
    this.textColor,
    this.icon,
    this.isHaveBoxShadow = false,
    this.isLoading = false,
  });

  final GestureTapCallback? onTap;
  final String? buttonText;
  final Color? buttonColor;
  final Color? bottonStock;
  final Color? textColor;
  final Widget? icon;
  final bool? isHaveBoxShadow;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap == null || isLoading!) return;
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
              isLoading!
                  ? SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        color: AppColors.white,
                        strokeWidth: 3,
                      ),
                    )
                  : Text(
                      buttonText ?? '',
                      style:
                          body1().copyWith(color: textColor ?? AppColors.black),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
