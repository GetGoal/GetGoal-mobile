// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_program_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProgramRequest _$CreateProgramRequestFromJson(
        Map<String, dynamic> json) =>
    CreateProgramRequest(
      programName: json['program_name'] as String?,
      programDesc: json['program_desc'] as String?,
      mediaUrl: json['media_url'] as String?,
      expectedTime: json['expected_time'] as String?,
      tasks: (json['tasks'] as List<dynamic>?)
          ?.map((e) => TaskRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      labels: (json['labels'] as List<dynamic>)
          .map((e) => LabelRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateProgramRequestToJson(
        CreateProgramRequest instance) =>
    <String, dynamic>{
      'program_name': instance.programName,
      'program_desc': instance.programDesc,
      'media_url': instance.mediaUrl,
      'expected_time': instance.expectedTime,
      'tasks': instance.tasks,
      'labels': instance.labels,
    };

LabelRequest _$LabelRequestFromJson(Map<String, dynamic> json) => LabelRequest(
      labelName: json['label_name'] as String?,
    );

Map<String, dynamic> _$LabelRequestToJson(LabelRequest instance) =>
    <String, dynamic>{
      'label_name': instance.labelName,
    };
