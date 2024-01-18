import 'package:shared_preferences/shared_preferences.dart';

import 'i18n/strings.g.dart';

class LocaleConfig {
  LocaleConfig._();

  static Future<AppLocale> getCurrentLocale() async {
    final Future<SharedPreferences> sharedPreferences =
        SharedPreferences.getInstance();

    final currentLocale =
        await sharedPreferences.then((SharedPreferences prefs) {
      if (prefs.getString('currentLocale') == null) {
        prefs.setString('currentLocale', 'EN');
      }
      return prefs.getString('currentLocale')!;
    });

    switch (currentLocale) {
      case 'EN':
        return AppLocale.en;
      case 'TH':
        return AppLocale.th;
      default:
        return AppLocale.en;
    }
  }
}
