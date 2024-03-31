import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/bases/base_data.dart';
import '../../../../../../../shared/app_cache.dart';
import '../../../../../../program/domain/entities/program_filter.dart';
import '../../../../../domain/usecase/auth/get_category_preference_usecase.dart';

part 'preference_list_event.dart';
part 'preference_list_state.dart';
part 'preference_list_bloc.freezed.dart';

class PreferenceListBloc
    extends Bloc<PreferenceListEvent, PreferenceListState> {
  PreferenceListBloc(
    this._getCategoryPreferenceUsecase,
  ) : super(const PreferenceListState.initial()) {
    on<PreferenceListEventStarted>(_onStarted);
    on<PreferenceListEventOnTapped>(_onTapped);
  }

  final GetCategoryPreferenceUsecase _getCategoryPreferenceUsecase;

  FutureOr<void> _onStarted(
    PreferenceListEventStarted event,
    Emitter<PreferenceListState> emit,
  ) async {
    try {
      final res = await _getCategoryPreferenceUsecase();
      if (res.code == 201) {
        emit(PreferenceListState.failure(message: res.error));
        return;
      }

      emit(PreferenceListState.success(labels: res.data!));
    } on DataFailed catch (e) {
      emit(PreferenceListState.failure(message: e.error.toString()));
    }
  }

  FutureOr<void> _onTapped(
    PreferenceListEventOnTapped event,
    Emitter<PreferenceListState> emit,
  ) {
    final selectedLabel = event.labels.where((e) => e.isSelected!);
    AppCache.preferenceList = selectedLabel
        .map(
          (e) => e.labelName ?? '',
        )
        .toList();

    emit(PreferenceListState.success(labels: event.labels));
  }
}
