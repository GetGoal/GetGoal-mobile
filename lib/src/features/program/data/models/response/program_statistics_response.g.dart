// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_statistics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProgramStatisticsResponse _$ProgramStatisticsResponseFromJson(
        Map<String, dynamic> json) =>
    ProgramStatisticsResponse(
      programId: json['program_id'] as int?,
      joined: json['joined'] as int?,
      saved: json['saved'] as int?,
      viewed: json['viewed'] as int?,
      lastJoined: json['last_joined'] as String?,
    );

Map<String, dynamic> _$ProgramStatisticsResponseToJson(
        ProgramStatisticsResponse instance) =>
    <String, dynamic>{
      'program_id': instance.programId,
      'joined': instance.joined,
      'saved': instance.saved,
      'viewed': instance.viewed,
      'last_joined': instance.lastJoined,
    };
