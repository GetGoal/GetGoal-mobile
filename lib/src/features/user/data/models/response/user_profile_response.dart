import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_response.g.dart';

@JsonSerializable()
class UserProfileResponse {
  UserProfileResponse({
    required this.userId,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.labels,
  });

  factory UserProfileResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileResponseToJson(this);

  @JsonKey(name: 'user_id')
  final int? userId;

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'first_name')
  final String? firstName;

  @JsonKey(name: 'last_name')
  final String? lastName;

  @JsonKey(name: 'labels')
  final List<String>? labels;
}
