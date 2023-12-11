import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../../../../../shared/utils/date_format.dart';
import '../../../../../domain/models/task.dart';
import '../../../../../domain/usecases/task/get_task_by_user_usecase.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc(this._getTaskByUserUsecase) : super(const TodoStateInitial()) {
    on<TodoEventStarted>(_onTodoStart);
    on<TodoEventDateSelectorTapped>(_onDateSelectorTapped);
  }

  final GetTaskByUserUsecase _getTaskByUserUsecase;

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
        date: formatForRequest(DateTime.now()),
      );

      if (taskList.data!.isEmpty) {
        emit(const TodoState.empty());
        return;
      }

      final todoList = <Task>[];
      final doneList = <Task>[];

      taskList.data!
          .map(
            (e) => e.taskStatus == 0 ? todoList.add(e) : doneList.add(e),
          )
          .toList();

      emit(TodoState.loadedSuccess(todoList: todoList, doneList: doneList));
    } catch (e) {
      _logger.e('ProgramStateError:', error: e);
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
            (e) => e.taskStatus == 0 ? todoList.add(e) : doneList.add(e),
          )
          .toList();

      emit(TodoState.loadedSuccess(todoList: todoList, doneList: doneList));
    } catch (e) {
      _logger.e('ProgramStateError:', error: e);
      emit(const TodoState.error());
    }
  }
}
