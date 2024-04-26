import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../task/data/models/response/task_response.dart';
import 'owner_response.dart';
import 'program_filter_response.dart';

part 'program_response.g.dart';

@JsonSerializable()
class ProgramModel {
  factory ProgramModel.fromJson(Map<String, dynamic> json) =>
      _$ProgramModelFromJson(json);

  ProgramModel({
    this.programId,
    this.programName,
    this.programDesc,
    this.madiaUrl,
    this.expectedTime,
    this.updatedAt,
    this.labels,
    this.tasks,
    this.isSaved,
    this.owner,
  });

  Map<String, dynamic> toJson() => _$ProgramModelToJson(this);

  @JsonKey(name: 'program_id')
  final int? programId;

  @JsonKey(name: 'program_name')
  final String? programName;

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

  @JsonKey(name: 'owner')
  final OwnerModel? owner;
}
