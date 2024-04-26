import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/program.dart';
import '../../../domain/usecases/program/get_recommend_program_usecase.dart';

part 'recommended_program_event.dart';
part 'recommended_program_state.dart';
part 'recommended_program_bloc.freezed.dart';

class RecommendedProgramBloc
    extends Bloc<RecommendedProgramEvent, RecommendedProgramState> {
  RecommendedProgramBloc(
    this._getRecommendProgramUsecase,
  ) : super(const RecommendedProgramState.initial()) {
    on<RecommendedProgramEvent>(_onRecommendStarted);
  }
  final GetRecommendProgramUsecase _getRecommendProgramUsecase;

  FutureOr<void> _onRecommendStarted(
    RecommendedProgramEvent event,
    Emitter<RecommendedProgramState> emit,
  ) async {
    try {
      final programList = await _getRecommendProgramUsecase.call();

      if (programList.data!.isEmpty) {
        emit(const RecommendedProgramState.success(programs: []));
        return;
      }

      emit(RecommendedProgramState.success(programs: programList.data!));
    } catch (e) {
      emit(const RecommendedProgramState.failure());
    }
  }
}
