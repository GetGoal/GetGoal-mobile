import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_user_request.g.dart';

@JsonSerializable()
class TaskUserRequest {
  TaskUserRequest({required this.params});
  factory TaskUserRequest.fromJson(Map<String, dynamic> json) =>
      _$TaskUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TaskUserRequestToJson(this);

  @JsonKey(name: 'params')
  final TaskUserRequestParameters? params;
}

@JsonSerializable()
class TaskUserRequestParameters {
  TaskUserRequestParameters({required this.email, required this.date});
  factory TaskUserRequestParameters.fromJson(Map<String, dynamic> json) =>
      _$TaskUserRequestParametersFromJson(json);

  Map<String, dynamic> toJson() => _$TaskUserRequestParametersToJson(this);

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'date')
  final String? date;
}
