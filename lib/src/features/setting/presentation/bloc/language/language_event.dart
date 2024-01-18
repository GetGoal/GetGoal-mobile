part of 'language_bloc.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.started() = LanguageEventStarted;
  const factory LanguageEvent.changeLanguage({
    required String locale,
  }) = LanguageEventChangeLanguage;
}
