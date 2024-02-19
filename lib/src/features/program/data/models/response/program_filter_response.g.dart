// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_filter_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProgramFilterResponse _$ProgramFilterResponseFromJson(
        Map<String, dynamic> json) =>
    ProgramFilterResponse(
      label: json['Label'] == null
          ? null
          : ProgramFilterInfo.fromJson(json['Label'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProgramFilterResponseToJson(
        ProgramFilterResponse instance) =>
    <String, dynamic>{
      'Label': instance.label,
    };

ProgramFilterInfo _$ProgramFilterInfoFromJson(Map<String, dynamic> json) =>
    ProgramFilterInfo(
      count: json['count'] as int?,
      labels: (json['labels'] as List<dynamic>?)
          ?.map((e) => Label.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProgramFilterInfoToJson(ProgramFilterInfo instance) =>
    <String, dynamic>{
      'count': instance.count,
      'labels': instance.labels,
    };

Label _$LabelFromJson(Map<String, dynamic> json) => Label(
      labelId: json['label_id'] as int?,
      labelName: json['label_name'] as String?,
      programId:
          (json['program_id'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$LabelToJson(Label instance) => <String, dynamic>{
      'label_id': instance.labelId,
      'label_name': instance.labelName,
      'program_id': instance.programId,
    };
