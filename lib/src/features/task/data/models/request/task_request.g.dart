// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskRequest _$TaskRequestFromJson(Map<String, dynamic> json) => TaskRequest(
      taskName: json['task_name'] as String?,
      taskDesc: json['task_description'] as String?,
      isSetNoti: json['is_set_noti'] as String?,
      startTime: json['start_time'] as String?,
      category: json['category'] as String?,
      timeBeforeNotify: json['time_before_notify'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$TaskRequestToJson(TaskRequest instance) =>
    <String, dynamic>{
      'task_name': instance.taskName,
      'task_description': instance.taskDesc,
      'is_set_noti': instance.isSetNoti,
      'start_time': instance.startTime,
      'category': instance.category,
      'time_before_notify': instance.timeBeforeNotify,
      'email': instance.email,
    };
