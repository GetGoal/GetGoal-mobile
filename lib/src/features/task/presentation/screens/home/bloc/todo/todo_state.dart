part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = TodoStateInitial;
  const factory TodoState.loading() = TodoStateLoading;
  const factory TodoState.loadedSuccess({
    required List<Task> todoList,
  }) = TodoStateLoadedSuccess;
  const factory TodoState.empty() = TodoStateLoadedEmpty;
  const factory TodoState.error() = TodoStateError;
}
