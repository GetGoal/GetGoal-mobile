import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../task/data/models/request/task_request.dart';

part 'create_program_request.g.dart';

@JsonSerializable()
class CreateProgramRequest {
  CreateProgramRequest({
    required this.programName,
    required this.programDesc,
    required this.mediaUrl,
    required this.expectedTime,
    required this.tasks,
    required this.labels,
  });

  factory CreateProgramRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CreateProgramRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateProgramRequestToJson(this);

  @JsonKey(name: 'program_name')
  final String? programName;

  @JsonKey(name: 'program_desc')
  final String? programDesc;

  @JsonKey(name: 'media_url')
  final String? mediaUrl;

  @JsonKey(name: 'expected_time')
  final String? expectedTime;

  @JsonKey(name: 'tasks')
  final List<TaskRequest>? tasks;

  @JsonKey(name: 'labels')
  final List<LabelRequest> labels;
}

@JsonSerializable()
class LabelRequest {
  LabelRequest({required this.labelName});

  factory LabelRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LabelRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LabelRequestToJson(this);

  @JsonKey(name: 'label_name')
  final String? labelName;
}
