import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_entity.freezed.dart';

@freezed
sealed class LoginEntity with _$LoginEntity {
  const factory LoginEntity({
    String? email,
    String? password,
  }) = _LoginEntity;
}
