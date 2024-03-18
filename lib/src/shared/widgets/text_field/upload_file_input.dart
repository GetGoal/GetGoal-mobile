import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/i18n/strings.g.dart';
import '../../icon.dart';
import '../../themes/color.dart';
import '../../themes/font.dart';
import '../text/get_goal_gradient_text.dart';

class UploadFileInput extends StatelessWidget {
  const UploadFileInput({
    super.key,
    this.height = 252,
    required this.label,
    this.dash = 5,
    this.onTap,
  });

  final double? height;
  final String label;
  final double? dash;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: height,
        child: DottedBorder(
          color: AppColors.description,
          borderType: BorderType.RRect,
          dashPattern: [dash ?? 5, dash ?? 5],
          radius: const Radius.circular(24),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppIcon.upload_icon,
                  fit: BoxFit.scaleDown,
                  height: 32,
                ),
                GetGoalGradientText(
                  label,
                  style: bodyBold(),
                ),
                Text(
                  Translations.of(context).create_program.tap_to_upload,
                  style: caption1Regular().copyWith(
                    color: AppColors.description,
                  ),
                ),
                Text(
                  Translations.of(context).create_program.file_support,
                  style: caption1Regular().copyWith(
                    color: AppColors.description,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
