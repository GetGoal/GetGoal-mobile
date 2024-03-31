import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/bases/base_data.dart';
import '../../../../../../../shared/app_cache.dart';
import '../../../../../../user/domain/usecases/update_user_label_usecase.dart';

part 'update_user_label_event.dart';
part 'update_user_label_state.dart';
part 'update_user_label_bloc.freezed.dart';

class UpdateUserLabelBloc
    extends Bloc<UpdateUserLabelEvent, UpdateUserLabelState> {
  UpdateUserLabelBloc(
    this._updateUserLabelUsecase,
  ) : super(const UpdateUserLabelState.initial()) {
    on<UpdateUserLabelEventOnUpdated>(_onUpdated);
  }

  final UpdateUserLabelUsecase _updateUserLabelUsecase;

  FutureOr<void> _onUpdated(
    UpdateUserLabelEventOnUpdated event,
    Emitter<UpdateUserLabelState> emit,
  ) async {
    try {
      final res = await _updateUserLabelUsecase(params: event.labels);
      if (res.code == 201) {
        emit(UpdateUserLabelState.failure(message: res.error));
        return;
      }

      AppCache.userEmail = '';

      emit(const UpdateUserLabelState.updated());
    } on DataFailed catch (e) {
      emit(UpdateUserLabelState.failure(message: e.error.toString()));
    }
  }
}
