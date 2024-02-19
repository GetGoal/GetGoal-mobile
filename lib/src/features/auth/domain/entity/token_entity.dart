import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_entity.freezed.dart';

@freezed
sealed class TokenEntity with _$TokenEntity {
  const factory TokenEntity({
    String? accessToken,
    String? refreshToken,
  }) = _TokenEntity;
}
