import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user.freezed.dart';

@freezed
sealed class CreateUser with _$CreateUser {
  const factory CreateUser({
    String? firstName,
    String? lastName,
    String? email,
    String? password,
  }) = _CreateUser;
}
