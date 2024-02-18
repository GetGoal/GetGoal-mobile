import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  RegisterRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  factory RegisterRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);

  @JsonKey(name: 'first_name')
  final String? firstName;

  @JsonKey(name: 'last_name')
  final String? lastName;

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'password')
  final String? password;
}
