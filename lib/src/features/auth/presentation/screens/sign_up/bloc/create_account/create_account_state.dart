part of 'create_account_bloc.dart';

@freezed
class CreateAccountState with _$CreateAccountState {
  const factory CreateAccountState.initial() = CreateAccountStateInitial;
  const factory CreateAccountState.loading() = CreateAccountStateLoading;
  const factory CreateAccountState.created() = CreateAccountStateCreated;
  const factory CreateAccountState.createError() = CreateAccountStateError;
}
