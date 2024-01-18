part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState.initial() = LanguageStateInitial;
  const factory LanguageState.loadedSuccess({
    required String currentLocale,
  }) = LanguageStateLoadedSuccess;
  const factory LanguageState.error() = LanguageStateError;
}
