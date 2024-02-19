import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_program_request.g.dart';

@JsonSerializable()
class FilterProgramRequest {
  FilterProgramRequest({
    required this.listOfLabelName,
  });

  factory FilterProgramRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FilterProgramRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FilterProgramRequestToJson(this);

  @JsonKey(name: 'labels')
  final List<String>? listOfLabelName;
}
