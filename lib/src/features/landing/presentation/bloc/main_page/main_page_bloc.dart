import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../../../config/i18n/strings.g.dart';

part 'main_page_event.dart';
part 'main_page_state.dart';
part 'main_page_bloc.freezed.dart';

class MainPageBloc extends Bloc<MainPageEvent, MainPageState> {
  MainPageBloc()
      : super(
          MainPageStateInitial(
            bottomNavSelected: 0,
            appbarTitle:
                DateFormat.yMMMd(LocaleSettings.currentLocale.languageCode)
                    .format(DateTime.now()),
          ),
        ) {
    on<MainPageEventStarted>(_onMainPageInit);
    on<MainPageEventBottomNavTapped>(_onBottomNavTapped);
  }

  final day = DateFormat.d(LocaleSettings.currentLocale.languageCode)
      .format(DateTime.now());
  final month = DateFormat.MMMM(LocaleSettings.currentLocale.languageCode)
      .format(DateTime.now());
  final year = LocaleSettings.currentLocale.languageCode == 'en'
      ? DateFormat.y(LocaleSettings.currentLocale.languageCode)
          .format(DateTime.now())
      : int.parse(
            DateFormat.y(LocaleSettings.currentLocale.languageCode)
                .format(DateTime.now()),
          ) +
          543;

  FutureOr<void> _onMainPageInit(
    MainPageEventStarted event,
    Emitter<MainPageState> emit,
  ) {
    emit(
      MainPageState.initial(
        bottomNavSelected: 0,
        appbarTitle: '$month, $day $year',
      ),
    );
  }

  FutureOr<void> _onBottomNavTapped(
    MainPageEventBottomNavTapped event,
    Emitter<MainPageState> emit,
  ) async {
    emit(
      MainPageState.initial(
        bottomNavSelected: event.bottomNavSelected,
        appbarTitle: event.appbarTitle,
      ),
    );
  }
}
