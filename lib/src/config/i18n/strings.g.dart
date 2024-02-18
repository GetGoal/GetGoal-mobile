/// Generated file. Do not edit.
///
/// Original: lib/src/config/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 106 (53 per locale)
///
/// Built on 2024-02-18 at 20:49 UTC

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
	late final _StringsCreateButtonEn create_button = _StringsCreateButtonEn._(_root);
	late final _StringsCreateTaskEn create_task = _StringsCreateTaskEn._(_root);
	late final _StringsEditTaskEn edit_task = _StringsEditTaskEn._(_root);
	late final _StringsCreateProgramEn create_program = _StringsCreateProgramEn._(_root);
	late final _StringsEditProgramEn edit_program = _StringsEditProgramEn._(_root);
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
	String get program_error => 'Sorry, some error occur.\nPlease retry';
}

// Path: create_button
class _StringsCreateButtonEn {
	_StringsCreateButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get create_new => 'Create new';
	String get create_program => 'Program';
	String get create_program_des => 'Create a program for your needs or everyone';
	String get crete_task => 'To-do task';
	String get crete_task_des => 'Add a to-do task for yourself';
}

// Path: create_task
class _StringsCreateTaskEn {
	_StringsCreateTaskEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get create_task => 'Create Task';
	String get task_name => 'Task name';
	String get ex_task_name => 'Ex. Make your bed';
	String get description => 'Description';
	String get ex_description => 'Your description';
	String get category => 'Category';
	String get ex_category => 'Ex. Routine';
	String get start_date => 'Start date';
	String get ex_start_date => 'Ex. 09/12/2024';
	String get time => 'Time';
	String get ex_time => 'Ex. 8:00 AM';
	String get allow_noti => 'Allow notification';
	String get reminder => 'Reminder';
	String get set_noti => 'Set your notification';
	String get create_button => 'Create';
	String get save_button => 'Save';
}

// Path: edit_task
class _StringsEditTaskEn {
	_StringsEditTaskEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get task_setting => 'Task Settings';
}

// Path: create_program
class _StringsCreateProgramEn {
	_StringsCreateProgramEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get create_program => 'Create Program';
	String get upload_your_image => 'Upload your image';
	String get tap_to_upload => 'Tap to upload';
	String get file_support => 'File support .JPEG .PNG';
	String get program_name => 'Program name';
	String get ex_program_name => 'Ex. Make your own music in 3 Days';
	String get description => 'Description';
	String get ex_description => 'Your description';
	String get category => 'Category';
	String get ex_category => 'Ex. Music';
	String get expected_time => 'Expected time';
	String get ex_expected_time => 'Ex. 3 Days';
	String get next_button => 'Next';
	String get create_task_list => 'Create Task List';
}

// Path: edit_program
class _StringsEditProgramEn {
	_StringsEditProgramEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get edit_program => 'Program Settings';
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
	@override late final _StringsCreateButtonTh create_button = _StringsCreateButtonTh._(_root);
	@override late final _StringsCreateTaskTh create_task = _StringsCreateTaskTh._(_root);
	@override late final _StringsEditTaskTh edit_task = _StringsEditTaskTh._(_root);
	@override late final _StringsCreateProgramTh create_program = _StringsCreateProgramTh._(_root);
	@override late final _StringsEditProgramTh edit_program = _StringsEditProgramTh._(_root);
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
	@override String get program_error => 'เกิดข้อผิดพลาด\nกรุณาลองใหม่อีกครั้ง';
}

// Path: create_button
class _StringsCreateButtonTh implements _StringsCreateButtonEn {
	_StringsCreateButtonTh._(this._root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get create_new => 'สร้าง';
	@override String get create_program => 'โปรแกรม';
	@override String get create_program_des => 'สร้างโปรแกรมตามความต้องการของคุณหรือทุกคน';
	@override String get crete_task => 'รายการ';
	@override String get crete_task_des => 'สร้างงานที่ต้องทำสำหรับตัวคุณเอง';
}

// Path: create_task
class _StringsCreateTaskTh implements _StringsCreateTaskEn {
	_StringsCreateTaskTh._(this._root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get create_task => 'สร้างรายการ';
	@override String get task_name => 'ชื่อรายการ';
	@override String get ex_task_name => 'ตัวอย่าง การจัดเตียง';
	@override String get description => 'คำอธิบาย';
	@override String get ex_description => 'คำอธิบายรายการ';
	@override String get category => 'ประเภท';
	@override String get ex_category => 'ตัวอย่าง กิจวัตรประจำวัน';
	@override String get start_date => 'วันที่';
	@override String get ex_start_date => '09/12/2024';
	@override String get time => 'เวลา';
	@override String get ex_time => '8:00 AM';
	@override String get allow_noti => 'การแจ้งเตือน';
	@override String get reminder => 'เตือนความจำ';
	@override String get set_noti => 'ตั้งค่าการแจ้งเตือน';
	@override String get create_button => 'สร้าง';
	@override String get save_button => 'บันทึก';
}

// Path: edit_task
class _StringsEditTaskTh implements _StringsEditTaskEn {
	_StringsEditTaskTh._(this._root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get task_setting => 'แก้ไขรายการ';
}

// Path: create_program
class _StringsCreateProgramTh implements _StringsCreateProgramEn {
	_StringsCreateProgramTh._(this._root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get create_program => 'สร้างโปรแกรม';
	@override String get upload_your_image => 'อัปโหลดภาพของคุณ';
	@override String get tap_to_upload => 'แตะเพื่ออัปโหลด';
	@override String get file_support => 'รองรับไฟล์ .JPEG .PNG';
	@override String get program_name => 'ชื่อโปรแกรม';
	@override String get ex_program_name => 'ตัวอย่าง สร้างเพลงด้วยตัวคุณเองใน 3 วัน';
	@override String get description => 'คำอธิบาย';
	@override String get ex_description => 'คำอธิบายโปรแกรม';
	@override String get category => 'หมวดหมู่';
	@override String get ex_category => 'ตัวอย่าง ดนตรี';
	@override String get expected_time => 'เวลาที่คาดหวัง';
	@override String get ex_expected_time => 'ตัวอย่าง 3 วัน';
	@override String get next_button => 'ต่อไป';
	@override String get create_task_list => 'สร้างรายการงาน';
}

// Path: edit_program
class _StringsEditProgramTh implements _StringsEditProgramEn {
	_StringsEditProgramTh._(this._root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get edit_program => 'แก้ไขโปรแกรม';
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
			case 'program.program_error': return 'Sorry, some error occur.\nPlease retry';
			case 'create_button.create_new': return 'Create new';
			case 'create_button.create_program': return 'Program';
			case 'create_button.create_program_des': return 'Create a program for your needs or everyone';
			case 'create_button.crete_task': return 'To-do task';
			case 'create_button.crete_task_des': return 'Add a to-do task for yourself';
			case 'create_task.create_task': return 'Create Task';
			case 'create_task.task_name': return 'Task name';
			case 'create_task.ex_task_name': return 'Ex. Make your bed';
			case 'create_task.description': return 'Description';
			case 'create_task.ex_description': return 'Your description';
			case 'create_task.category': return 'Category';
			case 'create_task.ex_category': return 'Ex. Routine';
			case 'create_task.start_date': return 'Start date';
			case 'create_task.ex_start_date': return 'Ex. 09/12/2024';
			case 'create_task.time': return 'Time';
			case 'create_task.ex_time': return 'Ex. 8:00 AM';
			case 'create_task.allow_noti': return 'Allow notification';
			case 'create_task.reminder': return 'Reminder';
			case 'create_task.set_noti': return 'Set your notification';
			case 'create_task.create_button': return 'Create';
			case 'create_task.save_button': return 'Save';
			case 'edit_task.task_setting': return 'Task Settings';
			case 'create_program.create_program': return 'Create Program';
			case 'create_program.upload_your_image': return 'Upload your image';
			case 'create_program.tap_to_upload': return 'Tap to upload';
			case 'create_program.file_support': return 'File support .JPEG .PNG';
			case 'create_program.program_name': return 'Program name';
			case 'create_program.ex_program_name': return 'Ex. Make your own music in 3 Days';
			case 'create_program.description': return 'Description';
			case 'create_program.ex_description': return 'Your description';
			case 'create_program.category': return 'Category';
			case 'create_program.ex_category': return 'Ex. Music';
			case 'create_program.expected_time': return 'Expected time';
			case 'create_program.ex_expected_time': return 'Ex. 3 Days';
			case 'create_program.next_button': return 'Next';
			case 'create_program.create_task_list': return 'Create Task List';
			case 'edit_program.edit_program': return 'Program Settings';
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
			case 'program.program_error': return 'เกิดข้อผิดพลาด\nกรุณาลองใหม่อีกครั้ง';
			case 'create_button.create_new': return 'สร้าง';
			case 'create_button.create_program': return 'โปรแกรม';
			case 'create_button.create_program_des': return 'สร้างโปรแกรมตามความต้องการของคุณหรือทุกคน';
			case 'create_button.crete_task': return 'รายการ';
			case 'create_button.crete_task_des': return 'สร้างงานที่ต้องทำสำหรับตัวคุณเอง';
			case 'create_task.create_task': return 'สร้างรายการ';
			case 'create_task.task_name': return 'ชื่อรายการ';
			case 'create_task.ex_task_name': return 'ตัวอย่าง การจัดเตียง';
			case 'create_task.description': return 'คำอธิบาย';
			case 'create_task.ex_description': return 'คำอธิบายรายการ';
			case 'create_task.category': return 'ประเภท';
			case 'create_task.ex_category': return 'ตัวอย่าง กิจวัตรประจำวัน';
			case 'create_task.start_date': return 'วันที่';
			case 'create_task.ex_start_date': return '09/12/2024';
			case 'create_task.time': return 'เวลา';
			case 'create_task.ex_time': return '8:00 AM';
			case 'create_task.allow_noti': return 'การแจ้งเตือน';
			case 'create_task.reminder': return 'เตือนความจำ';
			case 'create_task.set_noti': return 'ตั้งค่าการแจ้งเตือน';
			case 'create_task.create_button': return 'สร้าง';
			case 'create_task.save_button': return 'บันทึก';
			case 'edit_task.task_setting': return 'แก้ไขรายการ';
			case 'create_program.create_program': return 'สร้างโปรแกรม';
			case 'create_program.upload_your_image': return 'อัปโหลดภาพของคุณ';
			case 'create_program.tap_to_upload': return 'แตะเพื่ออัปโหลด';
			case 'create_program.file_support': return 'รองรับไฟล์ .JPEG .PNG';
			case 'create_program.program_name': return 'ชื่อโปรแกรม';
			case 'create_program.ex_program_name': return 'ตัวอย่าง สร้างเพลงด้วยตัวคุณเองใน 3 วัน';
			case 'create_program.description': return 'คำอธิบาย';
			case 'create_program.ex_description': return 'คำอธิบายโปรแกรม';
			case 'create_program.category': return 'หมวดหมู่';
			case 'create_program.ex_category': return 'ตัวอย่าง ดนตรี';
			case 'create_program.expected_time': return 'เวลาที่คาดหวัง';
			case 'create_program.ex_expected_time': return 'ตัวอย่าง 3 วัน';
			case 'create_program.next_button': return 'ต่อไป';
			case 'create_program.create_task_list': return 'สร้างรายการงาน';
			case 'edit_program.edit_program': return 'แก้ไขโปรแกรม';
			default: return null;
		}
	}
}
