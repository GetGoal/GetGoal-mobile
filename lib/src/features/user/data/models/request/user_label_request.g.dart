// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_label_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLabelRequest _$UserLabelRequestFromJson(Map<String, dynamic> json) =>
    UserLabelRequest(
      labels:
          (json['labels'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UserLabelRequestToJson(UserLabelRequest instance) =>
    <String, dynamic>{
      'labels': instance.labels,
    };
