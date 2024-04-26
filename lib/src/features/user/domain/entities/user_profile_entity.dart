import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_entity.freezed.dart';

@freezed
sealed class UserProfileEntity with _$UserProfileEntity {
  const factory UserProfileEntity({
    final int? userId,
    final String? email,
    final String? firstName,
    final String? lastName,
    final List<String>? labels,
    final String? imageUrl,
  }) = _UserProfileEntity;
}
