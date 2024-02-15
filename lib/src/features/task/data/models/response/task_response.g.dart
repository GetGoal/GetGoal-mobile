// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskResponse _$TaskResponseFromJson(Map<String, dynamic> json) => TaskResponse(
      task: json['Task'] == null
          ? null
          : TaskInfo.fromJson(json['Task'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskResponseToJson(TaskResponse instance) =>
    <String, dynamic>{
      'Task': instance.task,
    };

TaskInfo _$TaskInfoFromJson(Map<String, dynamic> json) => TaskInfo(
      count: json['count'] as int?,
      tasks: (json['tasks'] as List<dynamic>?)
          ?.map((e) => TaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TaskInfoToJson(TaskInfo instance) => <String, dynamic>{
      'count': instance.count,
      'tasks': instance.tasks,
    };

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => TaskModel(
      taskId: json['task_id'] as int?,
      taskName: json['task_name'] as String?,
      taskStatus: json['task_status'] as int?,
      isSetNotification: json['is_set_noti'] as int?,
      startTime: json['start_time'] as String?,
      category: json['category'] as String?,
      timeBeforeNotify: json['time_before_notify'] as int?,
      taskDescription: json['task_description'] as String?,
      link: json['link'] as String?,
      mediaUrl: json['media_url'] as String?,
      relatedProgramId: json['related_program_id'] as int?,
      ownerId: json['owner_id'] as int?,
    );

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
      'task_id': instance.taskId,
      'task_name': instance.taskName,
      'task_status': instance.taskStatus,
      'is_set_noti': instance.isSetNotification,
      'start_time': instance.startTime,
      'category': instance.category,
      'time_before_notify': instance.timeBeforeNotify,
      'task_description': instance.taskDescription,
      'link': instance.link,
      'media_url': instance.mediaUrl,
      'related_program_id': instance.relatedProgramId,
      'owner_id': instance.ownerId,
    };
