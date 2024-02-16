import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_request.g.dart';

@JsonSerializable()
class TaskRequest {
  TaskRequest({
    required this.taskName,
    required this.taskDesc,
    required this.isSetNoti,
    required this.startTime,
    required this.category,
    required this.timeBeforeNotify,
    required this.email,
  });

  factory TaskRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TaskRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TaskRequestToJson(this);

  @JsonKey(name: 'task_name')
  final String? taskName;

  @JsonKey(name: 'task_description')
  final String? taskDesc;

  @JsonKey(name: 'is_set_noti')
  final String? isSetNoti;

  @JsonKey(name: 'start_time')
  final String? startTime;

  @JsonKey(name: 'category')
  final String? category;

  @JsonKey(name: 'time_before_notify')
  final String? timeBeforeNotify;

  @JsonKey(name: 'email')
  final String? email;
}
