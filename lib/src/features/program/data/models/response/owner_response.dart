import 'package:json_annotation/json_annotation.dart';

part 'owner_response.g.dart';

@JsonSerializable()
class OwnerModel {
  factory OwnerModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerModelFromJson(json);

  OwnerModel({
    this.ownerId,
    this.firstName,
    this.lastName,
    this.email,
    this.imageUrl,
  });

  @JsonKey(name: 'owner_id')
  final int? ownerId;

  @JsonKey(name: 'first_name')
  final String? firstName;

  @JsonKey(name: 'last_name')
  final String? lastName;

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'image_url')
  final String? imageUrl;

  Map<String, dynamic> toJson() => _$OwnerModelToJson(this);
}
