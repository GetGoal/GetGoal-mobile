// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskUserRequest _$TaskUserRequestFromJson(Map<String, dynamic> json) =>
    TaskUserRequest(
      params: json['params'] == null
          ? null
          : TaskUserRequestParameters.fromJson(
              json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskUserRequestToJson(TaskUserRequest instance) =>
    <String, dynamic>{
      'params': instance.params,
    };

TaskUserRequestParameters _$TaskUserRequestParametersFromJson(
        Map<String, dynamic> json) =>
    TaskUserRequestParameters(
      email: json['email'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$TaskUserRequestParametersToJson(
        TaskUserRequestParameters instance) =>
    <String, dynamic>{
      'email': instance.email,
      'date': instance.date,
    };
