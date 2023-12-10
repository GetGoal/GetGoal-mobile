part of 'main_page_bloc.dart';

@freezed
class MainPageEvent with _$MainPageEvent {
  const factory MainPageEvent.started() = MainPageEventStarted;
  const factory MainPageEvent.bottomNavTapped({
    required int bottomNavSelected,
    required String appbarTitle,
  }) = MainPageEventBottomNavTapped;
}
