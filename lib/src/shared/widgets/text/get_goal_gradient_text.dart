import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../themes/color.dart';
import '../../themes/font.dart';

class GetGoalGradientText extends StatelessWidget {
  const GetGoalGradientText(
    this.text, {
    super.key,
    this.style,
    this.gradient,
  });

  final String text;
  final TextStyle? style;
  final List<Color>? gradient;

  @override
  Widget build(BuildContext context) {
    return GradientText(
      text,
      gradientDirection: GradientDirection.ttb,
      style: style ?? bodyRegular(),
      colors: gradient ?? [AppColors.primary, AppColors.primary2],
    );
  }
}
