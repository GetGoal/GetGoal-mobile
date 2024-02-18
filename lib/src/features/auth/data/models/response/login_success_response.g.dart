// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginSuccessResponse _$LoginSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    LoginSuccessResponse(
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$LoginSuccessResponseToJson(
        LoginSuccessResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
