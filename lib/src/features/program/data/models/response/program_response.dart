import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../task/data/models/response/task_response.dart';
import 'program_filter_response.dart';

part 'program_response.g.dart';

@JsonSerializable()
class ProgramResponse {
  ProgramResponse({required this.program});

  factory ProgramResponse.fromJson(Map<String, dynamic> json) =>
      _$ProgramResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProgramResponseToJson(this);

  @JsonKey(name: 'Program')
  final ProgramDataModel? program;
}

@JsonSerializable()
class ProgramResponse2 {
  ProgramResponse2({required this.program});

  factory ProgramResponse2.fromJson(Map<String, dynamic> json) =>
      _$ProgramResponse2FromJson(json);

  Map<String, dynamic> toJson() => _$ProgramResponse2ToJson(this);

  @JsonKey(name: 'Program')
  final ProgramModel? program;
}

@JsonSerializable()
class ProgramDataModel {
  ProgramDataModel({required this.count, required this.programs});

  factory ProgramDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProgramDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProgramDataModelToJson(this);

  @JsonKey(name: 'count')
  final int? count;

  @JsonKey(name: 'programs')
  final List<ProgramModel>? programs;
}

@JsonSerializable()
class ProgramModel {
  ProgramModel({
    required this.programId,
    required this.programName,
    required this.rating,
    required this.programDesc,
    required this.madiaUrl,
    required this.expectedTime,
    required this.updatedAt,
    required this.labels,
    required this.tasks,
    required this.isSaved,
  });

  factory ProgramModel.fromJson(Map<String, dynamic> json) =>
      _$ProgramModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProgramModelToJson(this);

  @JsonKey(name: 'program_id')
  final int? programId;

  @JsonKey(name: 'program_name')
  final String? programName;

  @JsonKey(name: 'rating')
  final double? rating;

  @JsonKey(name: 'program_desc')
  final String? programDesc;

  @JsonKey(name: 'media_url')
  final String? madiaUrl;

  @JsonKey(name: 'expected_time')
  final String? expectedTime;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @JsonKey(name: 'labels')
  final List<Label>? labels;

  @JsonKey(name: 'tasks')
  final List<TaskModel>? tasks;

  @JsonKey(name: 'is_saved')
  final bool? isSaved;
}
