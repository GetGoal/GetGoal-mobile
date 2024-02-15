// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_program_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterProgramRequest _$FilterProgramRequestFromJson(
        Map<String, dynamic> json) =>
    FilterProgramRequest(
      listOfLabelName:
          (json['labels'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$FilterProgramRequestToJson(
        FilterProgramRequest instance) =>
    <String, dynamic>{
      'labels': instance.listOfLabelName,
    };
