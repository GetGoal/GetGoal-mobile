import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_join_program_task_user_request.g.dart';

@JsonSerializable()
class JoinProgramRequest {
  JoinProgramRequest({
    required this.taskList,
    required this.email,
  });

  factory JoinProgramRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$JoinProgramRequestFromJson(json);

  Map<String, dynamic> toJson() => _$JoinProgramRequestToJson(this);

  @JsonKey(name: 'modifications')
  final List<JoinProramTaskReqeust>? taskList;

  @JsonKey(name: 'email')
  final String? email;
}

@JsonSerializable()
class JoinProramTaskReqeust {
  JoinProramTaskReqeust({
    required this.isSetNotification,
    required this.startTime,
    required this.timeBeforeNotify,
  });

  factory JoinProramTaskReqeust.fromJson(Map<String, dynamic> json) =>
      _$JoinProramTaskReqeustFromJson(json);

  Map<String, dynamic> toJson() => _$JoinProramTaskReqeustToJson(this);

  @JsonKey(name: 'is_set_notification')
  final int? isSetNotification;

  @JsonKey(name: 'start_time')
  final String? startTime;

  @JsonKey(name: 'time_before_notify')
  final int? timeBeforeNotify;
}
