import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_user.freezed.dart';

@freezed
sealed class VerifyUser with _$VerifyUser {
  const factory VerifyUser({
    String? code,
    String? email,
  }) = _VerifyUser;
}
