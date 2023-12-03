// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProgramResponse _$ProgramResponseFromJson(Map<String, dynamic> json) =>
    ProgramResponse(
      program: json['Program'] == null
          ? null
          : ProgramDataModel.fromJson(json['Program'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProgramResponseToJson(ProgramResponse instance) =>
    <String, dynamic>{
      'Program': instance.program,
    };

ProgramDataModel _$ProgramDataModelFromJson(Map<String, dynamic> json) =>
    ProgramDataModel(
      count: json['count'] as int?,
      programs: (json['programs'] as List<dynamic>?)
          ?.map((e) => ProgramModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProgramDataModelToJson(ProgramDataModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'programs': instance.programs,
    };

ProgramModel _$ProgramModelFromJson(Map<String, dynamic> json) => ProgramModel(
      programId: json['program_id'] as int?,
      programName: json['program_name'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      programDesc: json['program_description'] as String?,
      madiaUrl: json['media_url'] as String?,
      expectedTime: json['expected_time'] as String?,
      updatedAt: json['updated_at'] as String?,
      labels: (json['labels'] as List<dynamic>?)
          ?.map((e) => Label.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProgramModelToJson(ProgramModel instance) =>
    <String, dynamic>{
      'program_id': instance.programId,
      'program_name': instance.programName,
      'rating': instance.rating,
      'program_description': instance.programDesc,
      'media_url': instance.madiaUrl,
      'expected_time': instance.expectedTime,
      'updated_at': instance.updatedAt,
      'labels': instance.labels,
    };
