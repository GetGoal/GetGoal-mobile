import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../../../../../shared/utils/date_format.dart';
import '../../../../../domain/entities/task.dart';
import '../../../../../domain/usecases/task/change_task_status_to_done_usecase.dart';
import '../../../../../domain/usecases/task/change_task_status_to_not_done_usecase.dart';
import '../../../../../domain/usecases/task/get_task_by_user_usecase.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc(
    this._getTaskByUserUsecase,
    this._changeTaskStatusToDoneUsecase,
    this._changeTaskStatusToNotDoneUsecase,
  ) : super(const TodoStateInitial()) {
    on<TodoEventStarted>(_onTodoStart);
    on<TodoEventDateSelectorTapped>(_onDateSelectorTapped);
    on<TodoEventChangeTaskStatusToDone>(_onChangeTaskStatusToDone);
    on<TodoEventChagenTaskStatusToNotDone>(_onChangeTaskStatusToNotDone);
  }

  final GetTaskByUserUsecase _getTaskByUserUsecase;
  final ChangeTaskStatusToDoneUsecase _changeTaskStatusToDoneUsecase;
  final ChangeTaskStatusToNotDoneUsecase _changeTaskStatusToNotDoneUsecase;

  final _logger = Logger(
    printer: PrettyPrinter(),
  );

  FutureOr<void> _onTodoStart(
    TodoEventStarted event,
    Emitter<TodoState> emit,
  ) async {
    try {
      final taskList = await _getTaskByUserUsecase.call(
        params: 'kheintze0@gg.com',
        date: formatForRequest(event.date!),
      );

      if (taskList.data!.isEmpty) {
        emit(const TodoState.empty());
        return;
      }

      final todoList = <Task>[];
      final doneList = <Task>[];

      taskList.data!
          .map(
            (e) => e.taskStatus == 1 ? todoList.add(e) : doneList.add(e),
          )
          .toList();

      emit(TodoState.loadedSuccess(todoList: [...todoList, ...doneList]));
    } catch (e) {
      emit(const TodoState.error());
    }
  }

  FutureOr<void> _onDateSelectorTapped(
    TodoEventDateSelectorTapped event,
    Emitter<TodoState> emit,
  ) async {
    try {
      emit(const TodoState.loading());

      final taskList = await _getTaskByUserUsecase.call(
        params: 'kheintze0@gg.com',
        date: formatForRequest(event.date!),
      );

      if (taskList.data!.isEmpty) {
        emit(const TodoState.empty());
        return;
      }

      List<Task> todoList = [];
      List<Task> doneList = [];

      taskList.data!
          .map(
            (e) => e.taskStatus == 1 ? todoList.add(e) : doneList.add(e),
          )
          .toList();

      // print(taskList.data);

      emit(TodoState.loadedSuccess(todoList: [...todoList, ...doneList]));
    } catch (e) {
      _logger.e('ProgramStateError:', error: e);
      emit(const TodoState.error());
    }
  }

  FutureOr<void> _onChangeTaskStatusToDone(
    TodoEventChangeTaskStatusToDone event,
    Emitter<TodoState> emit,
  ) async {
    try {
      // emit(const TodoState.loading());
      await _changeTaskStatusToDoneUsecase.call(params: event.taskId);

      final taskList = await _getTaskByUserUsecase.call(
        params: 'kheintze0@gg.com',
        date: formatForRequest(event.date!),
      );

      if (taskList.data!.isEmpty) {
        emit(const TodoState.empty());
        return;
      }

      List<Task> todoList = [];
      List<Task> doneList = [];

      taskList.data!
          .map(
            (e) => e.taskStatus == 1 ? todoList.add(e) : doneList.add(e),
          )
          .toList();

      emit(TodoState.loadedSuccess(todoList: [...todoList, ...doneList]));
    } catch (e) {
      emit(const TodoState.error());
    }
  }

  FutureOr<void> _onChangeTaskStatusToNotDone(
    TodoEventChagenTaskStatusToNotDone event,
    Emitter<TodoState> emit,
  ) async {
    try {
      // emit(const TodoState.loading());
      await _changeTaskStatusToNotDoneUsecase.call(params: event.taskId);

      final taskList = await _getTaskByUserUsecase.call(
        params: 'kheintze0@gg.com',
        date: formatForRequest(event.date!),
      );

      if (taskList.data!.isEmpty) {
        emit(const TodoState.empty());
        return;
      }

      List<Task> todoList = [];
      List<Task> doneList = [];

      taskList.data!
          .map(
            (e) => e.taskStatus == 1 ? todoList.add(e) : doneList.add(e),
          )
          .toList();

      emit(TodoState.loadedSuccess(todoList: [...todoList, ...doneList]));
    } catch (e) {
      emit(const TodoState.error());
    }
  }
}
