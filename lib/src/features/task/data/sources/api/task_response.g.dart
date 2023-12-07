// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskResponse _$TaskResponseFromJson(Map<String, dynamic> json) => TaskResponse(
      taskId: json['task_id'] as int?,
      taskName: json['task_name'] as String?,
      taskStatus: json['task_status'] as int?,
      userAccountId: json['user_account_id'] as int?,
      isSetNotification: json['is_set_noti'] as int?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      programId: json['program_id'] as int?,
      category: json['category'] as String?,
      timeBeforeNotify: json['time_before_notify'] as int?,
      taskDescription: json['task_description'] as String?,
      link: json['link'] as String?,
      mediaUrl: json['media_url'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$TaskResponseToJson(TaskResponse instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'task_name': instance.taskName,
      'task_status': instance.taskStatus,
      'user_account_id': instance.userAccountId,
      'is_set_noti': instance.isSetNotification,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'program_id': instance.programId,
      'category': instance.category,
      'time_before_notify': instance.timeBeforeNotify,
      'task_description': instance.taskDescription,
      'link': instance.link,
      'media_url': instance.mediaUrl,
      'updated_at': instance.updatedAt,
    };
