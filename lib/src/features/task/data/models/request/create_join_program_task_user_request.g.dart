// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_join_program_task_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JoinProgramRequest _$JoinProgramRequestFromJson(Map<String, dynamic> json) =>
    JoinProgramRequest(
      taskList: (json['modifications'] as List<dynamic>?)
          ?.map(
              (e) => JoinProramTaskReqeust.fromJson(e as Map<String, dynamic>))
          .toList(),
      email: json['email'] as String?,
    );

Map<String, dynamic> _$JoinProgramRequestToJson(JoinProgramRequest instance) =>
    <String, dynamic>{
      'modifications': instance.taskList,
      'email': instance.email,
    };

JoinProramTaskReqeust _$JoinProramTaskReqeustFromJson(
        Map<String, dynamic> json) =>
    JoinProramTaskReqeust(
      isSetNotification: json['is_set_notification'] as int?,
      startTime: json['start_time'] as String?,
      timeBeforeNotify: json['time_before_notify'] as int?,
    );

Map<String, dynamic> _$JoinProramTaskReqeustToJson(
        JoinProramTaskReqeust instance) =>
    <String, dynamic>{
      'is_set_notification': instance.isSetNotification,
      'start_time': instance.startTime,
      'time_before_notify': instance.timeBeforeNotify,
    };
