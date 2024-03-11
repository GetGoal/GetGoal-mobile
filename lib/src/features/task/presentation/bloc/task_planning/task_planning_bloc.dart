import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../domain/entities/task.dart';
import '../../../domain/usecases/task/get_task_by_program_id.dart';
import '../../../domain/usecases/task/join_program_usecase.dart';

part 'task_planning_event.dart';
part 'task_planning_state.dart';
part 'task_planning_bloc.freezed.dart';

class TaskPlanningBloc extends Bloc<TaskPlanningEvent, TaskPlanningState> {
  TaskPlanningBloc(
    this._getTaskByProgramIdUsecase,
    this._joinProgramUsecase,
  ) : super(const TaskPlanningStateInitial()) {
    on<StartedEvent>(_onTaskPlanningStart);
    on<CreatedEvent>(_onDoneButtonTapped);
  }

  final GetTaskByProgramIdUsecase _getTaskByProgramIdUsecase;
  final JoinProgramUsecase _joinProgramUsecase;

  final _logger = Logger(
    printer: PrettyPrinter(),
  );

  FutureOr<void> _onTaskPlanningStart(
    StartedEvent event,
    Emitter<TaskPlanningState> emit,
  ) async {
    try {
      final taskList = await _getTaskByProgramIdUsecase.call(
        params: event.programId,
      );

      if (taskList.data!.isEmpty) {
        emit(const TaskPlanningState.empty());
        return;
      }

      emit(TaskPlanningState.loadedSuccess(tasks: taskList.data!));
    } catch (e) {
      _logger.e('ProgramStateError:', error: e);
      emit(const TaskPlanningState.error());
    }
  }

  FutureOr<void> _onDoneButtonTapped(
    CreatedEvent event,
    Emitter<TaskPlanningState> emit,
  ) async {
    try {
      final taskList = await _joinProgramUsecase.call(
        params: event.tasks,
        programId: event.programId,
        email: 'kheintze0@gg.com',
      );

      if (taskList.data!.isEmpty) {
        emit(const TaskPlanningState.joinedProgramError());
        return;
      }

      emit(const TaskPlanningState.joinedProgram());
    } catch (e) {
      emit(const TaskPlanningState.joinedProgramError());
    }
  }
}
