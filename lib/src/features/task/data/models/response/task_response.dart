import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_response.g.dart';

@JsonSerializable()
class TaskResponse {
  TaskResponse({required this.task});

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TaskResponseToJson(this);

  @JsonKey(name: 'Task')
  final TaskInfo? task;
}

@JsonSerializable()
class TaskInfo {
  TaskInfo({required this.count, required this.tasks});

  factory TaskInfo.fromJson(Map<String, dynamic> json) =>
      _$TaskInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TaskInfoToJson(this);

  @JsonKey(name: 'count')
  final int? count;

  @JsonKey(name: 'tasks')
  final List<TaskModel>? tasks;
}

@JsonSerializable()
class TaskModel {
  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  TaskModel({
    this.taskId,
    this.taskName,
    this.isSetNotification,
    this.startTime,
    this.category,
    this.timeBeforeNotify,
    this.taskDescription,
    this.link,
    this.mediaUrl,
    this.relatedProgramId,
    this.ownerId,
  });

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);

  @JsonKey(name: 'task_id')
  final int? taskId;

  @JsonKey(name: 'task_name')
  final String? taskName;

  @JsonKey(name: 'is_set_noti')
  final int? isSetNotification;

  @JsonKey(name: 'start_time')
  final String? startTime;

  @JsonKey(name: 'category')
  final String? category;

  @JsonKey(name: 'time_before_notify')
  final int? timeBeforeNotify;

  @JsonKey(name: 'task_description')
  final String? taskDescription;

  @JsonKey(name: 'link')
  final String? link;

  @JsonKey(name: 'media_url')
  final String? mediaUrl;

  @JsonKey(name: 'related_program_id')
  final int? relatedProgramId;

  @JsonKey(name: 'owner_id')
  final int? ownerId;
}
