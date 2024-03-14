import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../../../config/i18n/strings.g.dart';
import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/themes/spacing.dart';
import '../../../bloc/language/language_bloc.dart';

class PreferenceSettingWidget extends StatelessWidget {
  const PreferenceSettingWidget({
    super.key,
    this.bloc,
  });

  final LanguageBloc? bloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppSpacing.appMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Text(
              Translations.of(context).setting.preferences,
              style: bodyBold().copyWith(color: AppColors.white),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: EdgeInsets.all(AppSpacing.appMargin),
            decoration: BoxDecoration(
              boxShadow: AppShadow.shadow,
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              color: AppColors.secondary,
            ),
            child: Column(
              children: [
                _buildLanguagesSetting(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLanguagesSetting(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Translations.of(context).setting.languages,
          style: bodyRegular().copyWith(color: AppColors.white),
        ),
        BlocBuilder<LanguageBloc, LanguageState>(
          builder: (context, state) {
            if (state is LanguageStateLoadedSuccess) {
              bool isEn = state.currentLocale == 'EN';

              return Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      LocaleSettings.setLocale(AppLocale.en);
                      if (bloc == null) return;
                      bloc!.add(
                        const LanguageEvent.changeLanguage(locale: 'EN'),
                      );
                    },
                    child: GradientText(
                      Translations.of(context).setting.english,
                      gradientDirection: GradientDirection.ttb,
                      style: isEn ? bodyBold() : bodyRegular(),
                      colors: isEn
                          ? [AppColors.primary, AppColors.primary2]
                          : [AppColors.white, AppColors.white],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '/',
                    style: bodyRegular().copyWith(color: AppColors.white),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      LocaleSettings.setLocale(AppLocale.th);
                      if (bloc == null) return;
                      bloc!.add(
                        const LanguageEvent.changeLanguage(locale: 'TH'),
                      );
                    },
                    child: GradientText(
                      Translations.of(context).setting.thai,
                      gradientDirection: GradientDirection.ttb,
                      style: !isEn ? bodyBold() : bodyRegular(),
                      colors: !isEn
                          ? [AppColors.primary, AppColors.primary2]
                          : [AppColors.white, AppColors.white],
                    ),
                  ),
                ],
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ],
    );
  }
}
