// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_sign_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoogleSingInRequest _$GoogleSingInRequestFromJson(Map<String, dynamic> json) =>
    GoogleSingInRequest(
      provider: json['provider'] as String?,
      google: json['google'] == null
          ? null
          : GoogleSignInModel.fromJson(json['google'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GoogleSingInRequestToJson(
        GoogleSingInRequest instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'google': instance.google,
    };

GoogleSignInModel _$GoogleSignInModelFromJson(Map<String, dynamic> json) =>
    GoogleSignInModel(
      displayName: json['display_name'] as String?,
      email: json['email'] as String?,
      id: json['id'] as String?,
      photoUrl: json['photo_url'] as String?,
      serverAuthCode: json['server_auth_code'] as String?,
    );

Map<String, dynamic> _$GoogleSignInModelToJson(GoogleSignInModel instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'email': instance.email,
      'id': instance.id,
      'photo_url': instance.photoUrl,
      'server_auth_code': instance.serverAuthCode,
    };
