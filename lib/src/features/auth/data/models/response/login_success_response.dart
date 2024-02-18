import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_success_response.g.dart';

@JsonSerializable()
class LoginSuccessResponse {
  LoginSuccessResponse({required this.accessToken, required this.refreshToken});

  factory LoginSuccessResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoginSuccessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginSuccessResponseToJson(this);

  @JsonKey(name: 'access_token')
  final String? accessToken;

  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
}
