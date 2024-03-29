import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_request.g.dart';

@JsonSerializable()
class ResetPasswordRequest {
  ResetPasswordRequest({
    required this.email,
    required this.password,
  });

  factory ResetPasswordRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ResetPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordRequestToJson(this);

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'password')
  final String? password;
}
