import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/program_filter.dart';

part 'program_category_event.dart';
part 'program_category_state.dart';
part 'program_category_bloc.freezed.dart';

class ProgramCategoryBloc
    extends Bloc<ProgramCategoryEvent, ProgramCategoryState> {
  ProgramCategoryBloc()
      : super(const ProgramCategoryState.success(labels: [])) {
    on<ProgramCategoryEventStarted>(_onStarted);
    on<ProgramCategoryEventOnCategoryTapped>(_onCategoryTapped);
  }

  FutureOr<void> _onStarted(
    ProgramCategoryEventStarted event,
    Emitter<ProgramCategoryState> emit,
  ) {
    final labelList = [
      const ProgramFilter.label(
        labelName: 'Pets',
        isSelected: false,
      ),
      const ProgramFilter.label(
        labelName: 'Sports',
        isSelected: false,
      ),
      const ProgramFilter.label(
        labelName: 'Vehicles',
        isSelected: false,
      ),
      const ProgramFilter.label(
        labelName: 'Foods',
        isSelected: false,
      ),
      const ProgramFilter.label(
        labelName: 'Music',
        isSelected: false,
      ),
      const ProgramFilter.label(
        labelName: 'Jobs',
        isSelected: false,
      ),
      const ProgramFilter.label(
        labelName: 'Technology',
        isSelected: false,
      ),
      const ProgramFilter.label(
        labelName: 'Games',
        isSelected: false,
      ),
      const ProgramFilter.label(
        labelName: 'Languages',
        isSelected: false,
      ),
      const ProgramFilter.label(
        labelName: 'Art',
        isSelected: false,
      ),
      const ProgramFilter.label(
        labelName: 'Books',
        isSelected: false,
      ),
      const ProgramFilter.label(
        labelName: 'Computer',
        isSelected: false,
      ),
      const ProgramFilter.label(
        labelName: 'Programing',
        isSelected: false,
      ),
      const ProgramFilter.label(
        labelName: 'History',
        isSelected: false,
      ),
      const ProgramFilter.label(
        labelName: 'Sleep',
        isSelected: false,
      ),
    ];

    labelList.sort((a, b) {
      return a.labelName!.toLowerCase().compareTo(b.labelName!.toLowerCase());
    });

    emit(ProgramCategoryState.success(labels: labelList));
  }

  FutureOr<void> _onCategoryTapped(
    ProgramCategoryEventOnCategoryTapped event,
    Emitter<ProgramCategoryState> emit,
  ) {
    emit(ProgramCategoryState.success(labels: event.labels));
  }
}
