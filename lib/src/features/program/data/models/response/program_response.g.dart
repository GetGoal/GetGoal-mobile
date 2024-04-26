// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProgramModel _$ProgramModelFromJson(Map<String, dynamic> json) => ProgramModel(
      programId: json['program_id'] as int?,
      programName: json['program_name'] as String?,
      programDesc: json['program_desc'] as String?,
      madiaUrl: json['media_url'] as String?,
      expectedTime: json['expected_time'] as String?,
      updatedAt: json['updated_at'] as String?,
      labels: (json['labels'] as List<dynamic>?)
          ?.map((e) => Label.fromJson(e as Map<String, dynamic>))
          .toList(),
      tasks: (json['tasks'] as List<dynamic>?)
          ?.map((e) => TaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSaved: json['is_saved'] as bool?,
      owner: json['owner'] == null
          ? null
          : OwnerModel.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProgramModelToJson(ProgramModel instance) =>
    <String, dynamic>{
      'program_id': instance.programId,
      'program_name': instance.programName,
      'program_desc': instance.programDesc,
      'media_url': instance.madiaUrl,
      'expected_time': instance.expectedTime,
      'updated_at': instance.updatedAt,
      'labels': instance.labels,
      'tasks': instance.tasks,
      'is_saved': instance.isSaved,
      'owner': instance.owner,
    };
