part of 'main_page_bloc.dart';

@freezed
class MainPageState with _$MainPageState {
  const factory MainPageState.initial({
    required int bottomNavSelected,
    required String appbarTitle,
  }) = MainPageStateInitial;
}
