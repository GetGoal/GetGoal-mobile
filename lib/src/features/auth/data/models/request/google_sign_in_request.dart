import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_sign_in_request.g.dart';

@JsonSerializable()
class GoogleSingInRequest {
  GoogleSingInRequest({
    required this.provider,
    required this.google,
  });

  factory GoogleSingInRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GoogleSingInRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GoogleSingInRequestToJson(this);

  @JsonKey(name: 'provider')
  final String? provider;

  @JsonKey(name: 'google')
  final GoogleEntity? google;
}

@JsonSerializable()
class GoogleEntity {
  GoogleEntity({
    required this.displayName,
    required this.email,
    required this.id,
    required this.photoUrl,
    required this.serverAuthCode,
  });

  factory GoogleEntity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GoogleEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GoogleEntityToJson(this);

  @JsonKey(name: 'display_name')
  final String? displayName;

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'photo_url')
  final String? photoUrl;

  @JsonKey(name: 'server_auth_code')
  final String? serverAuthCode;
}
