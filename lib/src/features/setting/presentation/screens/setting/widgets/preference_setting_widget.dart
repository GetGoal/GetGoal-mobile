import 'package:flutter/material.dart';

import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/themes/spacing.dart';

class PreferenceSettingWidget extends StatelessWidget {
  const PreferenceSettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppSpeacing.appMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Text(
              'Preferences',
              style: title1(),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: EdgeInsets.all(AppSpeacing.appMargin),
            decoration: BoxDecoration(
              boxShadow: AppShadow.shadow,
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              color: AppColors.white,
            ),
            child: Column(
              children: [
                _languagesSetting(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _languagesSetting() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Languages',
          style: body2(),
        ),
        Row(
          children: [
            GestureDetector(child: const Text('EN')),
            const SizedBox(width: 4),
            const Text('/'),
            const SizedBox(width: 4),
            GestureDetector(
              child: const Text('TH'),
            ),
          ],
        )
      ],
    );
  }
}
