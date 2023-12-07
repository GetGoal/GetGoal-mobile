import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_response.g.dart';

@JsonSerializable()
class TaskResponse {
  TaskResponse({
    required this.taskId,
    required this.taskName,
    required this.taskStatus,
    required this.userAccountId,
    required this.isSetNotification,
    required this.startTime,
    required this.endTime,
    required this.programId,
    required this.category,
    required this.timeBeforeNotify,
    required this.taskDescription,
    required this.link,
    required this.mediaUrl,
    required this.updatedAt,
  });

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TaskResponseToJson(this);

  @JsonKey(name: 'task_id')
  final int? taskId;

  @JsonKey(name: 'task_name')
  final String? taskName;

  @JsonKey(name: 'task_status')
  final int? taskStatus;

  @JsonKey(name: 'user_account_id')
  final int? userAccountId;

  @JsonKey(name: 'is_set_noti')
  final int? isSetNotification;

  @JsonKey(name: 'start_time')
  final String? startTime;

  @JsonKey(name: 'end_time')
  final String? endTime;

  @JsonKey(name: 'program_id')
  final int? programId;

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

  @JsonKey(name: 'updated_at')
  final String? updatedAt;
}
