// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerifyUser {
  String? get code => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyUserCopyWith<VerifyUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyUserCopyWith<$Res> {
  factory $VerifyUserCopyWith(
          VerifyUser value, $Res Function(VerifyUser) then) =
      _$VerifyUserCopyWithImpl<$Res, VerifyUser>;
  @useResult
  $Res call({String? code, String? email});
}

/// @nodoc
class _$VerifyUserCopyWithImpl<$Res, $Val extends VerifyUser>
    implements $VerifyUserCopyWith<$Res> {
  _$VerifyUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyUserImplCopyWith<$Res>
    implements $VerifyUserCopyWith<$Res> {
  factory _$$VerifyUserImplCopyWith(
          _$VerifyUserImpl value, $Res Function(_$VerifyUserImpl) then) =
      __$$VerifyUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String? email});
}

/// @nodoc
class __$$VerifyUserImplCopyWithImpl<$Res>
    extends _$VerifyUserCopyWithImpl<$Res, _$VerifyUserImpl>
    implements _$$VerifyUserImplCopyWith<$Res> {
  __$$VerifyUserImplCopyWithImpl(
      _$VerifyUserImpl _value, $Res Function(_$VerifyUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? email = freezed,
  }) {
    return _then(_$VerifyUserImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VerifyUserImpl implements _VerifyUser {
  const _$VerifyUserImpl({this.code, this.email});

  @override
  final String? code;
  @override
  final String? email;

  @override
  String toString() {
    return 'VerifyUser(code: $code, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyUserImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyUserImplCopyWith<_$VerifyUserImpl> get copyWith =>
      __$$VerifyUserImplCopyWithImpl<_$VerifyUserImpl>(this, _$identity);
}

abstract class _VerifyUser implements VerifyUser {
  const factory _VerifyUser({final String? code, final String? email}) =
      _$VerifyUserImpl;

  @override
  String? get code;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$VerifyUserImplCopyWith<_$VerifyUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
