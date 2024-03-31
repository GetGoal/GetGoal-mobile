import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_label_request.g.dart';

@JsonSerializable()
class UserLabelRequest {
  UserLabelRequest({
    required this.labels,
  });

  factory UserLabelRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserLabelRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserLabelRequestToJson(this);

  @JsonKey(name: 'labels')
  final List<String>? labels;
}
