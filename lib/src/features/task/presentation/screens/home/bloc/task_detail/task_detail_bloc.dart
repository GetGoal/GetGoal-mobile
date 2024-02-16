import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_detail_event.dart';
part 'task_detail_state.dart';
part 'task_detail_bloc.freezed.dart';

class TaskDetailBloc extends Bloc<TaskDetailEvent, TaskDetailState> {
  TaskDetailBloc() : super(const TaskDetailState.initial()) {
    on<TaskDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
