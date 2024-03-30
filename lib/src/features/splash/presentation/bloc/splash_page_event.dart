part of 'splash_page_bloc.dart';

@freezed
class SplashPageEvent with _$SplashPageEvent {
  const factory SplashPageEvent.started() = SplashPageStarted;
  const factory SplashPageEvent.onLoad() = SplashPageOnLoad;
}
