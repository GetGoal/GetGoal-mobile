part of 'task_detail_bloc.dart';

@freezed
class TaskDetailEvent with _$TaskDetailEvent {
  const factory TaskDetailEvent.started() = TaskDetailEventStart;
  const factory TaskDetailEvent.edit() = TaskDetailEventEdit;
  const factory TaskDetailEvent.delete() = TaskDetailEventDelete;
}
