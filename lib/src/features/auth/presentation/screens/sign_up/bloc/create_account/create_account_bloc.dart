import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/bases/base_data.dart';
import '../../../../../../../core/bases/base_data_response.dart';
import '../../../../../domain/entity/create_user.dart';
import '../../../../../domain/usecase/auth/create_account_usecase.dart';

part 'create_account_event.dart';
part 'create_account_state.dart';
part 'create_account_bloc.freezed.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  CreateAccountBloc(this._createAccountUsecase)
      : super(const CreateAccountState.initial()) {
    on<CreateAccountEventOnCreate>(_onCreateAccount);
  }

  final CreateAccountUsecase _createAccountUsecase;

  FutureOr<void> _onCreateAccount(
    CreateAccountEventOnCreate event,
    Emitter<CreateAccountState> emit,
  ) async {
    try {
      emit(const CreateAccountState.loading());
      final res = await _createAccountUsecase.call(params: event.user);

      if (res.code != 201) {
        emit(const CreateAccountState.createError());
        return;
      }

      return emit(const CreateAccountState.created());
    } on DataFailed catch (e) {
      log(e.error.toString());
      emit(const CreateAccountState.createError());
    }
  }
}
