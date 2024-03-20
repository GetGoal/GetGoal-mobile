import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_event.dart';
part 'forget_password_state.dart';
part 'forget_password_bloc.freezed.dart';

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  ForgetPasswordBloc() : super(const ForgetPasswordState.initial()) {
    on<ForgetPasswordEventOnSubmited>(_onSubmited);
  }

  FutureOr<void> _onSubmited(
    ForgetPasswordEventOnSubmited event,
    Emitter<ForgetPasswordState> emit,
  ) async {
    emit(const ForgetPasswordState.success());
  }
}
