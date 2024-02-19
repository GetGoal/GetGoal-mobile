import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_filter_response.g.dart';

@JsonSerializable()
class ProgramFilterResponse {
  ProgramFilterResponse({
    required this.label,
  });

  factory ProgramFilterResponse.fromJson(Map<String, dynamic> json) =>
      _$ProgramFilterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProgramFilterResponseToJson(this);

  @JsonKey(name: 'Label')
  final ProgramFilterInfo? label;
}

@JsonSerializable()
class ProgramFilterInfo {
  ProgramFilterInfo({
    required this.count,
    required this.labels,
  });

  factory ProgramFilterInfo.fromJson(Map<String, dynamic> json) =>
      _$ProgramFilterInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ProgramFilterInfoToJson(this);

  @JsonKey(name: 'count')
  final int? count;
  @JsonKey(name: 'labels')
  final List<Label>? labels;
}

@JsonSerializable()
class Label {
  Label({
    required this.labelId,
    required this.labelName,
    required this.programId,
  });

  factory Label.fromJson(Map<String, dynamic> json) => _$LabelFromJson(json);

  Map<String, dynamic> toJson() => _$LabelToJson(this);

  @JsonKey(name: 'label_id')
  final int? labelId;
  @JsonKey(name: 'label_name')
  final String? labelName;
  @JsonKey(name: 'program_id')
  final List<int>? programId;
}
