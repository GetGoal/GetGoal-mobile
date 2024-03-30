part of 'splash_page_bloc.dart';

@freezed
class SplashPageState with _$SplashPageState {
  const factory SplashPageState.initial() = SplashPageInitial;
  const factory SplashPageState.loading() = SplashPageLoading;
  const factory SplashPageState.valid() = SplashPageValid;
  const factory SplashPageState.invalid() = SplashPageInvalid;
}
