import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_request.g.dart';

@JsonSerializable()
class VerifyRequest {
  VerifyRequest({
    required this.code,
    required this.email,
  });

  factory VerifyRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$VerifyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyRequestToJson(this);

  @JsonKey(name: 'code')
  final String? code;

  @JsonKey(name: 'email')
  final String? email;
}
