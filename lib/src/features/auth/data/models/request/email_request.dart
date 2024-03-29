import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_request.g.dart';

@JsonSerializable()
class EmailRequest {
  EmailRequest({
    required this.email,
  });

  factory EmailRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EmailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$EmailRequestToJson(this);

  @JsonKey(name: 'email')
  final String? email;
}
