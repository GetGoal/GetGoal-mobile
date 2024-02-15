/// Generated file. Do not edit.
///
/// Original: lib/src/config/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 30 (15 per locale)
///
/// Built on 2024-02-15 at 13:48 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	th(languageCode: 'th', build: _StringsTh.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _StringsNavbarEn navbar = _StringsNavbarEn._(_root);
	late final _StringsTaskEn task = _StringsTaskEn._(_root);
	late final _StringsUserProfileEn user_profile = _StringsUserProfileEn._(_root);
	late final _StringsProgramEn program = _StringsProgramEn._(_root);
}

// Path: navbar
class _StringsNavbarEn {
	_StringsNavbarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get program => 'Program';
	String get home => 'Home';
	String get calendar => 'Calendar';
	String get user => 'User';
}

// Path: task
class _StringsTaskEn {
	_StringsTaskEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get task_status_to_do => 'To-do';
	String get task_status_done => 'Done';
	String get empty_task => 'No tasks';
	String get empty_task_done => 'Nothing done';
}

// Path: user_profile
class _StringsUserProfileEn {
	_StringsUserProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get display_your_program => 'Your program';
	String get display_save_program => 'Save';
	String get display_applied_program => 'Applied';
	String get logout => 'Log out';
}

// Path: program
class _StringsProgramEn {
	_StringsProgramEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get search => 'Search';
	String get task_overview => 'Tasks Overview';
	String get start_program => 'Start this program';
}

// Path: <root>
class _StringsTh implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsTh.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.th,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <th>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsTh _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsNavbarTh navbar = _StringsNavbarTh._(_root);
	@override late final _StringsTaskTh task = _StringsTaskTh._(_root);
	@override late final _StringsUserProfileTh user_profile = _StringsUserProfileTh._(_root);
	@override late final _StringsProgramTh program = _StringsProgramTh._(_root);
}

// Path: navbar
class _StringsNavbarTh implements _StringsNavbarEn {
	_StringsNavbarTh._(this._root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get program => 'โปรแกรม';
	@override String get home => 'หน้าแรก';
	@override String get calendar => 'ปฏิทิน';
	@override String get user => 'บัญชี';
}

// Path: task
class _StringsTaskTh implements _StringsTaskEn {
	_StringsTaskTh._(this._root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get task_status_to_do => 'รายการที่ต้องทำ';
	@override String get task_status_done => 'รายการที่ทำสำเร็จ';
	@override String get empty_task => 'ไม่มีรายการที่ต้องทำ';
	@override String get empty_task_done => 'ไม่มีรายการที่ทำเสร็จ';
}

// Path: user_profile
class _StringsUserProfileTh implements _StringsUserProfileEn {
	_StringsUserProfileTh._(this._root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get display_your_program => 'โปรแกรมของฉัน';
	@override String get display_save_program => 'บันทึก';
	@override String get display_applied_program => 'รับสมัคร';
	@override String get logout => 'ออกจากระบบ';
}

// Path: program
class _StringsProgramTh implements _StringsProgramEn {
	_StringsProgramTh._(this._root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get search => 'ค้นหา';
	@override String get task_overview => 'ภาครวม';
	@override String get start_program => 'เริ่มโปรแกรมนี้';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'navbar.program': return 'Program';
			case 'navbar.home': return 'Home';
			case 'navbar.calendar': return 'Calendar';
			case 'navbar.user': return 'User';
			case 'task.task_status_to_do': return 'To-do';
			case 'task.task_status_done': return 'Done';
			case 'task.empty_task': return 'No tasks';
			case 'task.empty_task_done': return 'Nothing done';
			case 'user_profile.display_your_program': return 'Your program';
			case 'user_profile.display_save_program': return 'Save';
			case 'user_profile.display_applied_program': return 'Applied';
			case 'user_profile.logout': return 'Log out';
			case 'program.search': return 'Search';
			case 'program.task_overview': return 'Tasks Overview';
			case 'program.start_program': return 'Start this program';
			default: return null;
		}
	}
}

extension on _StringsTh {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'navbar.program': return 'โปรแกรม';
			case 'navbar.home': return 'หน้าแรก';
			case 'navbar.calendar': return 'ปฏิทิน';
			case 'navbar.user': return 'บัญชี';
			case 'task.task_status_to_do': return 'รายการที่ต้องทำ';
			case 'task.task_status_done': return 'รายการที่ทำสำเร็จ';
			case 'task.empty_task': return 'ไม่มีรายการที่ต้องทำ';
			case 'task.empty_task_done': return 'ไม่มีรายการที่ทำเสร็จ';
			case 'user_profile.display_your_program': return 'โปรแกรมของฉัน';
			case 'user_profile.display_save_program': return 'บันทึก';
			case 'user_profile.display_applied_program': return 'รับสมัคร';
			case 'user_profile.logout': return 'ออกจากระบบ';
			case 'program.search': return 'ค้นหา';
			case 'program.task_overview': return 'ภาครวม';
			case 'program.start_program': return 'เริ่มโปรแกรมนี้';
			default: return null;
		}
	}
}
