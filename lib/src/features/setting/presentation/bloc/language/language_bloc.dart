import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'language_event.dart';
part 'language_state.dart';
part 'language_bloc.freezed.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(const LanguageStateInitial()) {
    on<LanguageEventStarted>(_onLanguageEventStarted);
    on<LanguageEventChangeLanguage>(_onLanguageEventChangeLanguage);
  }

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  FutureOr<void> _onLanguageEventStarted(
    LanguageEventStarted event,
    Emitter<LanguageState> emit,
  ) async {
    try {
      final String locale = await _prefs.then((SharedPreferences prefs) {
        if (prefs.getString('currentLocale') == null) {
          prefs.setString('currentLocale', 'EN');
        }
        return prefs.getString('currentLocale')!;
      });
      emit(LanguageState.loadedSuccess(currentLocale: locale));
    } catch (e) {
      log(e.toString());
    }
  }

  FutureOr<void> _onLanguageEventChangeLanguage(
    LanguageEventChangeLanguage event,
    Emitter<LanguageState> emit,
  ) async {
    try {
      await _prefs.then((SharedPreferences prefs) {
        return prefs.setString('currentLocale', event.locale);
      });

      final String locale = await _prefs.then((SharedPreferences prefs) {
        return prefs.getString('currentLocale')!;
      });
      emit(LanguageState.loadedSuccess(currentLocale: locale));
    } catch (e) {
      log(e.toString());
    }
  }
}
