import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_data_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseDataResponse<T> {
  BaseDataResponse({
    this.code,
    this.message,
    this.count,
    this.data,
    this.error,
  });

  factory BaseDataResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseDataResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$BaseDataResponseToJson(this, toJsonT);

  @JsonKey(name: 'code')
  final int? code;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'count')
  final int? count;

  @JsonKey(name: 'data')
  final T? data;

  @JsonKey(name: 'error')
  final String? error;
}
