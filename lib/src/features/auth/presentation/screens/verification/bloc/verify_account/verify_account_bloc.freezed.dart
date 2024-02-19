// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String code) verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String code)? verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String code)? verified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyAccountEventStarted value) started,
    required TResult Function(VerifyAccountEventVerified value) verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyAccountEventStarted value)? started,
    TResult? Function(VerifyAccountEventVerified value)? verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyAccountEventStarted value)? started,
    TResult Function(VerifyAccountEventVerified value)? verified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyAccountEventCopyWith<$Res> {
  factory $VerifyAccountEventCopyWith(
          VerifyAccountEvent value, $Res Function(VerifyAccountEvent) then) =
      _$VerifyAccountEventCopyWithImpl<$Res, VerifyAccountEvent>;
}

/// @nodoc
class _$VerifyAccountEventCopyWithImpl<$Res, $Val extends VerifyAccountEvent>
    implements $VerifyAccountEventCopyWith<$Res> {
  _$VerifyAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VerifyAccountEventStartedImplCopyWith<$Res> {
  factory _$$VerifyAccountEventStartedImplCopyWith(
          _$VerifyAccountEventStartedImpl value,
          $Res Function(_$VerifyAccountEventStartedImpl) then) =
      __$$VerifyAccountEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyAccountEventStartedImplCopyWithImpl<$Res>
    extends _$VerifyAccountEventCopyWithImpl<$Res,
        _$VerifyAccountEventStartedImpl>
    implements _$$VerifyAccountEventStartedImplCopyWith<$Res> {
  __$$VerifyAccountEventStartedImplCopyWithImpl(
      _$VerifyAccountEventStartedImpl _value,
      $Res Function(_$VerifyAccountEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyAccountEventStartedImpl implements VerifyAccountEventStarted {
  const _$VerifyAccountEventStartedImpl();

  @override
  String toString() {
    return 'VerifyAccountEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyAccountEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String code) verified,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String code)? verified,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String code)? verified,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyAccountEventStarted value) started,
    required TResult Function(VerifyAccountEventVerified value) verified,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyAccountEventStarted value)? started,
    TResult? Function(VerifyAccountEventVerified value)? verified,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyAccountEventStarted value)? started,
    TResult Function(VerifyAccountEventVerified value)? verified,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class VerifyAccountEventStarted implements VerifyAccountEvent {
  const factory VerifyAccountEventStarted() = _$VerifyAccountEventStartedImpl;
}

/// @nodoc
abstract class _$$VerifyAccountEventVerifiedImplCopyWith<$Res> {
  factory _$$VerifyAccountEventVerifiedImplCopyWith(
          _$VerifyAccountEventVerifiedImpl value,
          $Res Function(_$VerifyAccountEventVerifiedImpl) then) =
      __$$VerifyAccountEventVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$VerifyAccountEventVerifiedImplCopyWithImpl<$Res>
    extends _$VerifyAccountEventCopyWithImpl<$Res,
        _$VerifyAccountEventVerifiedImpl>
    implements _$$VerifyAccountEventVerifiedImplCopyWith<$Res> {
  __$$VerifyAccountEventVerifiedImplCopyWithImpl(
      _$VerifyAccountEventVerifiedImpl _value,
      $Res Function(_$VerifyAccountEventVerifiedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$VerifyAccountEventVerifiedImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyAccountEventVerifiedImpl implements VerifyAccountEventVerified {
  const _$VerifyAccountEventVerifiedImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'VerifyAccountEvent.verified(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyAccountEventVerifiedImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyAccountEventVerifiedImplCopyWith<_$VerifyAccountEventVerifiedImpl>
      get copyWith => __$$VerifyAccountEventVerifiedImplCopyWithImpl<
          _$VerifyAccountEventVerifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String code) verified,
  }) {
    return verified(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String code)? verified,
  }) {
    return verified?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String code)? verified,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyAccountEventStarted value) started,
    required TResult Function(VerifyAccountEventVerified value) verified,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyAccountEventStarted value)? started,
    TResult? Function(VerifyAccountEventVerified value)? verified,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyAccountEventStarted value)? started,
    TResult Function(VerifyAccountEventVerified value)? verified,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class VerifyAccountEventVerified implements VerifyAccountEvent {
  const factory VerifyAccountEventVerified({required final String code}) =
      _$VerifyAccountEventVerifiedImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$VerifyAccountEventVerifiedImplCopyWith<_$VerifyAccountEventVerifiedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerifyAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() verified,
    required TResult Function(String? message) verifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? verified,
    TResult? Function(String? message)? verifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? verified,
    TResult Function(String? message)? verifiedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyAccountStateInitial value) initial,
    required TResult Function(VerifyAccountStateLoading value) loading,
    required TResult Function(VerifyAccountStateVerified value) verified,
    required TResult Function(VerifyAccountStateVirifiedError value)
        verifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyAccountStateInitial value)? initial,
    TResult? Function(VerifyAccountStateLoading value)? loading,
    TResult? Function(VerifyAccountStateVerified value)? verified,
    TResult? Function(VerifyAccountStateVirifiedError value)? verifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyAccountStateInitial value)? initial,
    TResult Function(VerifyAccountStateLoading value)? loading,
    TResult Function(VerifyAccountStateVerified value)? verified,
    TResult Function(VerifyAccountStateVirifiedError value)? verifiedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyAccountStateCopyWith<$Res> {
  factory $VerifyAccountStateCopyWith(
          VerifyAccountState value, $Res Function(VerifyAccountState) then) =
      _$VerifyAccountStateCopyWithImpl<$Res, VerifyAccountState>;
}

/// @nodoc
class _$VerifyAccountStateCopyWithImpl<$Res, $Val extends VerifyAccountState>
    implements $VerifyAccountStateCopyWith<$Res> {
  _$VerifyAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VerifyAccountStateInitialImplCopyWith<$Res> {
  factory _$$VerifyAccountStateInitialImplCopyWith(
          _$VerifyAccountStateInitialImpl value,
          $Res Function(_$VerifyAccountStateInitialImpl) then) =
      __$$VerifyAccountStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyAccountStateInitialImplCopyWithImpl<$Res>
    extends _$VerifyAccountStateCopyWithImpl<$Res,
        _$VerifyAccountStateInitialImpl>
    implements _$$VerifyAccountStateInitialImplCopyWith<$Res> {
  __$$VerifyAccountStateInitialImplCopyWithImpl(
      _$VerifyAccountStateInitialImpl _value,
      $Res Function(_$VerifyAccountStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyAccountStateInitialImpl implements VerifyAccountStateInitial {
  const _$VerifyAccountStateInitialImpl();

  @override
  String toString() {
    return 'VerifyAccountState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyAccountStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() verified,
    required TResult Function(String? message) verifiedError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? verified,
    TResult? Function(String? message)? verifiedError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? verified,
    TResult Function(String? message)? verifiedError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyAccountStateInitial value) initial,
    required TResult Function(VerifyAccountStateLoading value) loading,
    required TResult Function(VerifyAccountStateVerified value) verified,
    required TResult Function(VerifyAccountStateVirifiedError value)
        verifiedError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyAccountStateInitial value)? initial,
    TResult? Function(VerifyAccountStateLoading value)? loading,
    TResult? Function(VerifyAccountStateVerified value)? verified,
    TResult? Function(VerifyAccountStateVirifiedError value)? verifiedError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyAccountStateInitial value)? initial,
    TResult Function(VerifyAccountStateLoading value)? loading,
    TResult Function(VerifyAccountStateVerified value)? verified,
    TResult Function(VerifyAccountStateVirifiedError value)? verifiedError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class VerifyAccountStateInitial implements VerifyAccountState {
  const factory VerifyAccountStateInitial() = _$VerifyAccountStateInitialImpl;
}

/// @nodoc
abstract class _$$VerifyAccountStateLoadingImplCopyWith<$Res> {
  factory _$$VerifyAccountStateLoadingImplCopyWith(
          _$VerifyAccountStateLoadingImpl value,
          $Res Function(_$VerifyAccountStateLoadingImpl) then) =
      __$$VerifyAccountStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyAccountStateLoadingImplCopyWithImpl<$Res>
    extends _$VerifyAccountStateCopyWithImpl<$Res,
        _$VerifyAccountStateLoadingImpl>
    implements _$$VerifyAccountStateLoadingImplCopyWith<$Res> {
  __$$VerifyAccountStateLoadingImplCopyWithImpl(
      _$VerifyAccountStateLoadingImpl _value,
      $Res Function(_$VerifyAccountStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyAccountStateLoadingImpl implements VerifyAccountStateLoading {
  const _$VerifyAccountStateLoadingImpl();

  @override
  String toString() {
    return 'VerifyAccountState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyAccountStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() verified,
    required TResult Function(String? message) verifiedError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? verified,
    TResult? Function(String? message)? verifiedError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? verified,
    TResult Function(String? message)? verifiedError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyAccountStateInitial value) initial,
    required TResult Function(VerifyAccountStateLoading value) loading,
    required TResult Function(VerifyAccountStateVerified value) verified,
    required TResult Function(VerifyAccountStateVirifiedError value)
        verifiedError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyAccountStateInitial value)? initial,
    TResult? Function(VerifyAccountStateLoading value)? loading,
    TResult? Function(VerifyAccountStateVerified value)? verified,
    TResult? Function(VerifyAccountStateVirifiedError value)? verifiedError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyAccountStateInitial value)? initial,
    TResult Function(VerifyAccountStateLoading value)? loading,
    TResult Function(VerifyAccountStateVerified value)? verified,
    TResult Function(VerifyAccountStateVirifiedError value)? verifiedError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VerifyAccountStateLoading implements VerifyAccountState {
  const factory VerifyAccountStateLoading() = _$VerifyAccountStateLoadingImpl;
}

/// @nodoc
abstract class _$$VerifyAccountStateVerifiedImplCopyWith<$Res> {
  factory _$$VerifyAccountStateVerifiedImplCopyWith(
          _$VerifyAccountStateVerifiedImpl value,
          $Res Function(_$VerifyAccountStateVerifiedImpl) then) =
      __$$VerifyAccountStateVerifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyAccountStateVerifiedImplCopyWithImpl<$Res>
    extends _$VerifyAccountStateCopyWithImpl<$Res,
        _$VerifyAccountStateVerifiedImpl>
    implements _$$VerifyAccountStateVerifiedImplCopyWith<$Res> {
  __$$VerifyAccountStateVerifiedImplCopyWithImpl(
      _$VerifyAccountStateVerifiedImpl _value,
      $Res Function(_$VerifyAccountStateVerifiedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyAccountStateVerifiedImpl implements VerifyAccountStateVerified {
  const _$VerifyAccountStateVerifiedImpl();

  @override
  String toString() {
    return 'VerifyAccountState.verified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyAccountStateVerifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() verified,
    required TResult Function(String? message) verifiedError,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? verified,
    TResult? Function(String? message)? verifiedError,
  }) {
    return verified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? verified,
    TResult Function(String? message)? verifiedError,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyAccountStateInitial value) initial,
    required TResult Function(VerifyAccountStateLoading value) loading,
    required TResult Function(VerifyAccountStateVerified value) verified,
    required TResult Function(VerifyAccountStateVirifiedError value)
        verifiedError,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyAccountStateInitial value)? initial,
    TResult? Function(VerifyAccountStateLoading value)? loading,
    TResult? Function(VerifyAccountStateVerified value)? verified,
    TResult? Function(VerifyAccountStateVirifiedError value)? verifiedError,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyAccountStateInitial value)? initial,
    TResult Function(VerifyAccountStateLoading value)? loading,
    TResult Function(VerifyAccountStateVerified value)? verified,
    TResult Function(VerifyAccountStateVirifiedError value)? verifiedError,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class VerifyAccountStateVerified implements VerifyAccountState {
  const factory VerifyAccountStateVerified() = _$VerifyAccountStateVerifiedImpl;
}

/// @nodoc
abstract class _$$VerifyAccountStateVirifiedErrorImplCopyWith<$Res> {
  factory _$$VerifyAccountStateVirifiedErrorImplCopyWith(
          _$VerifyAccountStateVirifiedErrorImpl value,
          $Res Function(_$VerifyAccountStateVirifiedErrorImpl) then) =
      __$$VerifyAccountStateVirifiedErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$VerifyAccountStateVirifiedErrorImplCopyWithImpl<$Res>
    extends _$VerifyAccountStateCopyWithImpl<$Res,
        _$VerifyAccountStateVirifiedErrorImpl>
    implements _$$VerifyAccountStateVirifiedErrorImplCopyWith<$Res> {
  __$$VerifyAccountStateVirifiedErrorImplCopyWithImpl(
      _$VerifyAccountStateVirifiedErrorImpl _value,
      $Res Function(_$VerifyAccountStateVirifiedErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$VerifyAccountStateVirifiedErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VerifyAccountStateVirifiedErrorImpl
    implements VerifyAccountStateVirifiedError {
  const _$VerifyAccountStateVirifiedErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'VerifyAccountState.verifiedError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyAccountStateVirifiedErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyAccountStateVirifiedErrorImplCopyWith<
          _$VerifyAccountStateVirifiedErrorImpl>
      get copyWith => __$$VerifyAccountStateVirifiedErrorImplCopyWithImpl<
          _$VerifyAccountStateVirifiedErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() verified,
    required TResult Function(String? message) verifiedError,
  }) {
    return verifiedError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? verified,
    TResult? Function(String? message)? verifiedError,
  }) {
    return verifiedError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? verified,
    TResult Function(String? message)? verifiedError,
    required TResult orElse(),
  }) {
    if (verifiedError != null) {
      return verifiedError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyAccountStateInitial value) initial,
    required TResult Function(VerifyAccountStateLoading value) loading,
    required TResult Function(VerifyAccountStateVerified value) verified,
    required TResult Function(VerifyAccountStateVirifiedError value)
        verifiedError,
  }) {
    return verifiedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyAccountStateInitial value)? initial,
    TResult? Function(VerifyAccountStateLoading value)? loading,
    TResult? Function(VerifyAccountStateVerified value)? verified,
    TResult? Function(VerifyAccountStateVirifiedError value)? verifiedError,
  }) {
    return verifiedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyAccountStateInitial value)? initial,
    TResult Function(VerifyAccountStateLoading value)? loading,
    TResult Function(VerifyAccountStateVerified value)? verified,
    TResult Function(VerifyAccountStateVirifiedError value)? verifiedError,
    required TResult orElse(),
  }) {
    if (verifiedError != null) {
      return verifiedError(this);
    }
    return orElse();
  }
}

abstract class VerifyAccountStateVirifiedError implements VerifyAccountState {
  const factory VerifyAccountStateVirifiedError({final String? message}) =
      _$VerifyAccountStateVirifiedErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$VerifyAccountStateVirifiedErrorImplCopyWith<
          _$VerifyAccountStateVirifiedErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
