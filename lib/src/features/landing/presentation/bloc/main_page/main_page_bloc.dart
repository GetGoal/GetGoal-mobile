import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'main_page_event.dart';
part 'main_page_state.dart';
part 'main_page_bloc.freezed.dart';

class MainPageBloc extends Bloc<MainPageEvent, MainPageState> {
  MainPageBloc()
      : super(
          MainPageStateInitial(
            bottomNavSelected: 0,
            appbarTitle: DateFormat('MMMM, dd yyyy').format(DateTime.now()),
          ),
        ) {
    on<MainPageEventStarted>(_onMainPageInit);
    on<MainPageEventBottomNavTapped>(_onBottomNavTapped);
  }

  FutureOr<void> _onMainPageInit(
    MainPageEventStarted event,
    Emitter<MainPageState> emit,
  ) {
    emit(
      MainPageState.initial(
        bottomNavSelected: 0,
        appbarTitle: DateFormat('MMMM, dd yyyy').format(DateTime.now()),
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
