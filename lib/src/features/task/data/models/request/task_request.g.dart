// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskRequest _$TaskRequestFromJson(Map<String, dynamic> json) => TaskRequest(
      taskId: json['task_id'] as int?,
      taskName: json['task_name'] as String?,
      taskDesc: json['task_description'] as String?,
      isSetNoti: json['is_set_noti'] as int?,
      startTime: json['start_time'] as String?,
      category: json['category'] as String?,
      timeBeforeNotify: json['time_before_notify'] as int?,
    );

Map<String, dynamic> _$TaskRequestToJson(TaskRequest instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'task_name': instance.taskName,
      'task_description': instance.taskDesc,
      'is_set_noti': instance.isSetNoti,
      'start_time': instance.startTime,
      'category': instance.category,
      'time_before_notify': instance.timeBeforeNotify,
    };
