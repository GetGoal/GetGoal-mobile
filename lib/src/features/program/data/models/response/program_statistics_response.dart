import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_statistics_response.g.dart';

@JsonSerializable()
class ProgramStatisticsResponse {
  ProgramStatisticsResponse({
    required this.programId,
    required this.joined,
    required this.saved,
    required this.viewed,
    required this.lastJoined,
  });

  factory ProgramStatisticsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProgramStatisticsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProgramStatisticsResponseToJson(this);

  @JsonKey(name: 'program_id')
  final int? programId;

  @JsonKey(name: 'joined')
  final int? joined;

  @JsonKey(name: 'saved')
  final int? saved;

  @JsonKey(name: 'viewed')
  final int? viewed;

  @JsonKey(name: 'last_joined')
  final String? lastJoined;
}
