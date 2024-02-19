// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TokenEntity {
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenEntityCopyWith<TokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenEntityCopyWith<$Res> {
  factory $TokenEntityCopyWith(
          TokenEntity value, $Res Function(TokenEntity) then) =
      _$TokenEntityCopyWithImpl<$Res, TokenEntity>;
  @useResult
  $Res call({String? accessToken, String? refreshToken});
}

/// @nodoc
class _$TokenEntityCopyWithImpl<$Res, $Val extends TokenEntity>
    implements $TokenEntityCopyWith<$Res> {
  _$TokenEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenEntityImplCopyWith<$Res>
    implements $TokenEntityCopyWith<$Res> {
  factory _$$TokenEntityImplCopyWith(
          _$TokenEntityImpl value, $Res Function(_$TokenEntityImpl) then) =
      __$$TokenEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? accessToken, String? refreshToken});
}

/// @nodoc
class __$$TokenEntityImplCopyWithImpl<$Res>
    extends _$TokenEntityCopyWithImpl<$Res, _$TokenEntityImpl>
    implements _$$TokenEntityImplCopyWith<$Res> {
  __$$TokenEntityImplCopyWithImpl(
      _$TokenEntityImpl _value, $Res Function(_$TokenEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$TokenEntityImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TokenEntityImpl implements _TokenEntity {
  const _$TokenEntityImpl({this.accessToken, this.refreshToken});

  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'TokenEntity(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenEntityImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenEntityImplCopyWith<_$TokenEntityImpl> get copyWith =>
      __$$TokenEntityImplCopyWithImpl<_$TokenEntityImpl>(this, _$identity);
}

abstract class _TokenEntity implements TokenEntity {
  const factory _TokenEntity(
      {final String? accessToken,
      final String? refreshToken}) = _$TokenEntityImpl;

  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$TokenEntityImplCopyWith<_$TokenEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}