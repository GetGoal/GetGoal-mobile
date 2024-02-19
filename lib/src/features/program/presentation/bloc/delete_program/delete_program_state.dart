part of 'delete_program_bloc.dart';

@freezed
class DeleteProgramState with _$DeleteProgramState {
  const factory DeleteProgramState.initial() = DeleteProgramStateInitial;
  const factory DeleteProgramState.loading() = DeleteProgramStateLoading;
  const factory DeleteProgramState.deleted() = DeleteProgramStateDeleted;
  const factory DeleteProgramState.deleteError({
    String? message,
  }) = DeleteProgramStateDeleteError;
}
