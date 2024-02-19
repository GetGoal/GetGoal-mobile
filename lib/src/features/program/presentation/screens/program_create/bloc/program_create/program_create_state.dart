part of 'program_create_bloc.dart';

@freezed
class CreateProgramState with _$CreateProgramState {
  const factory CreateProgramState.initial() = CreateProgramStateInitial;
  const factory CreateProgramState.loading() = CreateProgramStateLoading;
  const factory CreateProgramState.created() = CreateProgramStateCreated;
  const factory CreateProgramState.createdError({
    String? message,
  }) = CreateProgramStateCreatedError;
}
