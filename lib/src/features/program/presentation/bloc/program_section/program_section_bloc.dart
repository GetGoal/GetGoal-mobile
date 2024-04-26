import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_section_event.dart';
part 'program_section_state.dart';
part 'program_section_bloc.freezed.dart';

class ProgramSectionBloc
    extends Bloc<ProgramSectionEvent, ProgramSectionState> {
  ProgramSectionBloc() : super(const ProgramSectionState.initial()) {
    on<ProgramSectionEventStarted>(_onStarted);
    on<ProgramSectionEventOnSearch>(_onSearch);
  }

  FutureOr<void> _onStarted(
    ProgramSectionEventStarted event,
    Emitter<ProgramSectionState> emit,
  ) async {
    emit(const ProgramSectionState.success());
  }

  FutureOr<void> _onSearch(
    ProgramSectionEventOnSearch event,
    Emitter<ProgramSectionState> emit,
  ) async {
    emit(const ProgramSectionState.hide());
  }
}
