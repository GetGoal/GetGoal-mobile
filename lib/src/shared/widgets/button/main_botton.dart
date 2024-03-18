import 'package:flutter/material.dart';

import '../../themes/color.dart';
import '../../themes/font.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    this.onTap,
    this.buttonText,
    this.buttonColor = const <Color>[],
    this.isHaveStrock = false,
    this.textColor,
    this.icon,
    this.isHaveBoxShadow = true,
    this.isLoading = false,
  });

  final GestureTapCallback? onTap;
  final String? buttonText;
  final List<Color>? buttonColor;
  final bool? isHaveStrock;
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
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: buttonColor!.isEmpty
                ? [
                    AppColors.primary,
                    AppColors.primary2,
                  ]
                : buttonColor!,
          ),
          borderRadius: BorderRadius.circular(36),
          border: isHaveStrock! ? Border.all(color: AppColors.primary2) : null,
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
                          body1().copyWith(color: textColor ?? AppColors.white),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
