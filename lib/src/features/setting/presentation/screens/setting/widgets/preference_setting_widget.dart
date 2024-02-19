import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              style: title1(),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: EdgeInsets.all(AppSpacing.appMargin),
            decoration: BoxDecoration(
              boxShadow: AppShadow.shadow,
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              color: AppColors.white,
            ),
            child: Column(
              children: [
                _buildLanguagesSetting(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLanguagesSetting() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Translations.of(context).setting.languages,
          style: body2(),
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
                    child: Text(
                      Translations.of(context).setting.english,
                      style: isEn
                          ? title1().copyWith(color: AppColors.primary)
                          : body1(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text('|'),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      LocaleSettings.setLocale(AppLocale.th);
                      if (bloc == null) return;
                      bloc!.add(
                        const LanguageEvent.changeLanguage(locale: 'TH'),
                      );
                    },
                    child: Text(
                      Translations.of(context).setting.thai,
                      style: !isEn
                          ? title1().copyWith(color: AppColors.primary)
                          : body1(),
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
