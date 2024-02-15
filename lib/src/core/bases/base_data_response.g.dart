// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseDataResponse<T> _$BaseDataResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseDataResponse<T>(
      code: json['code'] as int?,
      message: json['message'] as String?,
      count: json['count'] as int?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$BaseDataResponseToJson<T>(
  BaseDataResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'count': instance.count,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'error': instance.error,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
