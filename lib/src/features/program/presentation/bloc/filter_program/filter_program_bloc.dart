import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/program_filter.dart';
import '../../../domain/usecases/label/get_program_filter_usecase.dart';

part 'filter_program_bloc.freezed.dart';
part 'filter_program_event.dart';
part 'filter_program_state.dart';

class FilterProgramBloc extends Bloc<FilterProgramEvent, FilterProgramState> {
  FilterProgramBloc(this._getProgramFilterUsecase)
      : super(const FilterProgramState.initial()) {
    on<FilterProgramStarted>(_onFilterProgramStarted);
    on<FilterProgramClicked>(_onFilterClicked);
  }

  final GetProgramFilterUsecase _getProgramFilterUsecase;

  FutureOr<void> _onFilterProgramStarted(
    FilterProgramStarted event,
    Emitter<FilterProgramState> emit,
  ) async {
    try {
      emit(const FilterProgramState.loading());

      final filterList = await _getProgramFilterUsecase();

      if (filterList.data!.isEmpty) {
        emit(const FilterProgramState.loading());
        return;
      }

      List<ProgramFilter> fixedItem = <ProgramFilter>[
        const ProgramFilter.label(labelId: 0, labelName: 'For you'),
        const ProgramFilter.label(labelId: 0, labelName: 'All'),
        const ProgramFilter.label(labelId: 0, labelName: 'Following'),
      ];
      emit(
        FilterProgramState.loadedSuccess(
          labels: [...fixedItem, ...filterList.data!],
        ),
      );
    } catch (e) {
      emit(const FilterProgramState.error());
    }
  }

  FutureOr<void> _onFilterClicked(
    FilterProgramClicked event,
    Emitter<FilterProgramState> emit,
  ) {
    emit(
      FilterProgramState.loadedSuccess(
        labels: event.labels,
        selectedFilter: event.selectedFilter,
      ),
    );
  }
}
