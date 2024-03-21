import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_password_event.dart';
part 'new_password_state.dart';
part 'new_password_bloc.freezed.dart';

class NewPasswordBloc extends Bloc<NewPasswordEvent, NewPasswordState> {
  NewPasswordBloc() : super(const NewPasswordState.initial()) {
    on<NewPasswordEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
