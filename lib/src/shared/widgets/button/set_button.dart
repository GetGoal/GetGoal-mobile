import 'package:flutter/material.dart';

import '../../themes/color.dart';
import '../../themes/font.dart';

class SetButton extends StatelessWidget {
  const SetButton({super.key, this.onTap});

  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap == null) return;
        onTap!();
      },
      child: Container(
        height: 56,
        margin: const EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(36),
        ),
        child: Center(
          child: Text(
            'Set',
            style: body1(),
          ),
        ),
      ),
    );
  }
}
