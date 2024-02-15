import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_program_request.g.dart';

@JsonSerializable()
class SearchProgramRequest {
  SearchProgramRequest({
    required this.searchText,
  });

  factory SearchProgramRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SearchProgramRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchProgramRequestToJson(this);

  @JsonKey(name: 'search_text')
  final String? searchText;
}
