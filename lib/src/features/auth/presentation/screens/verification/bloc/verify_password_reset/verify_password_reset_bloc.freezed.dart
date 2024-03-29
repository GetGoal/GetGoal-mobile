// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_password_reset_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerifyPasswordResetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String code) onVerify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String code)? onVerify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String code)? onVerify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPasswordResetEventStarted value) started,
    required TResult Function(VerifyPasswordResetEventOnVerify value) onVerify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyPasswordResetEventStarted value)? started,
    TResult? Function(VerifyPasswordResetEventOnVerify value)? onVerify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPasswordResetEventStarted value)? started,
    TResult Function(VerifyPasswordResetEventOnVerify value)? onVerify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPasswordResetEventCopyWith<$Res> {
  factory $VerifyPasswordResetEventCopyWith(VerifyPasswordResetEvent value,
          $Res Function(VerifyPasswordResetEvent) then) =
      _$VerifyPasswordResetEventCopyWithImpl<$Res, VerifyPasswordResetEvent>;
}

/// @nodoc
class _$VerifyPasswordResetEventCopyWithImpl<$Res,
        $Val extends VerifyPasswordResetEvent>
    implements $VerifyPasswordResetEventCopyWith<$Res> {
  _$VerifyPasswordResetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VerifyPasswordResetEventStartedImplCopyWith<$Res> {
  factory _$$VerifyPasswordResetEventStartedImplCopyWith(
          _$VerifyPasswordResetEventStartedImpl value,
          $Res Function(_$VerifyPasswordResetEventStartedImpl) then) =
      __$$VerifyPasswordResetEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyPasswordResetEventStartedImplCopyWithImpl<$Res>
    extends _$VerifyPasswordResetEventCopyWithImpl<$Res,
        _$VerifyPasswordResetEventStartedImpl>
    implements _$$VerifyPasswordResetEventStartedImplCopyWith<$Res> {
  __$$VerifyPasswordResetEventStartedImplCopyWithImpl(
      _$VerifyPasswordResetEventStartedImpl _value,
      $Res Function(_$VerifyPasswordResetEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyPasswordResetEventStartedImpl
    implements VerifyPasswordResetEventStarted {
  const _$VerifyPasswordResetEventStartedImpl();

  @override
  String toString() {
    return 'VerifyPasswordResetEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPasswordResetEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String code) onVerify,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String code)? onVerify,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String code)? onVerify,
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
    required TResult Function(VerifyPasswordResetEventStarted value) started,
    required TResult Function(VerifyPasswordResetEventOnVerify value) onVerify,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyPasswordResetEventStarted value)? started,
    TResult? Function(VerifyPasswordResetEventOnVerify value)? onVerify,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPasswordResetEventStarted value)? started,
    TResult Function(VerifyPasswordResetEventOnVerify value)? onVerify,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class VerifyPasswordResetEventStarted
    implements VerifyPasswordResetEvent {
  const factory VerifyPasswordResetEventStarted() =
      _$VerifyPasswordResetEventStartedImpl;
}

/// @nodoc
abstract class _$$VerifyPasswordResetEventOnVerifyImplCopyWith<$Res> {
  factory _$$VerifyPasswordResetEventOnVerifyImplCopyWith(
          _$VerifyPasswordResetEventOnVerifyImpl value,
          $Res Function(_$VerifyPasswordResetEventOnVerifyImpl) then) =
      __$$VerifyPasswordResetEventOnVerifyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$VerifyPasswordResetEventOnVerifyImplCopyWithImpl<$Res>
    extends _$VerifyPasswordResetEventCopyWithImpl<$Res,
        _$VerifyPasswordResetEventOnVerifyImpl>
    implements _$$VerifyPasswordResetEventOnVerifyImplCopyWith<$Res> {
  __$$VerifyPasswordResetEventOnVerifyImplCopyWithImpl(
      _$VerifyPasswordResetEventOnVerifyImpl _value,
      $Res Function(_$VerifyPasswordResetEventOnVerifyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$VerifyPasswordResetEventOnVerifyImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyPasswordResetEventOnVerifyImpl
    implements VerifyPasswordResetEventOnVerify {
  const _$VerifyPasswordResetEventOnVerifyImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'VerifyPasswordResetEvent.onVerify(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPasswordResetEventOnVerifyImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPasswordResetEventOnVerifyImplCopyWith<
          _$VerifyPasswordResetEventOnVerifyImpl>
      get copyWith => __$$VerifyPasswordResetEventOnVerifyImplCopyWithImpl<
          _$VerifyPasswordResetEventOnVerifyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String code) onVerify,
  }) {
    return onVerify(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String code)? onVerify,
  }) {
    return onVerify?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String code)? onVerify,
    required TResult orElse(),
  }) {
    if (onVerify != null) {
      return onVerify(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPasswordResetEventStarted value) started,
    required TResult Function(VerifyPasswordResetEventOnVerify value) onVerify,
  }) {
    return onVerify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyPasswordResetEventStarted value)? started,
    TResult? Function(VerifyPasswordResetEventOnVerify value)? onVerify,
  }) {
    return onVerify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPasswordResetEventStarted value)? started,
    TResult Function(VerifyPasswordResetEventOnVerify value)? onVerify,
    required TResult orElse(),
  }) {
    if (onVerify != null) {
      return onVerify(this);
    }
    return orElse();
  }
}

abstract class VerifyPasswordResetEventOnVerify
    implements VerifyPasswordResetEvent {
  const factory VerifyPasswordResetEventOnVerify({required final String code}) =
      _$VerifyPasswordResetEventOnVerifyImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$VerifyPasswordResetEventOnVerifyImplCopyWith<
          _$VerifyPasswordResetEventOnVerifyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerifyPasswordResetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPasswordResetStateInitial value) initial,
    required TResult Function(VerifyPasswordResetStateLoading value) loading,
    required TResult Function(VerifyPasswordResetStateSuccess value) success,
    required TResult Function(VerifyPasswordResetStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyPasswordResetStateInitial value)? initial,
    TResult? Function(VerifyPasswordResetStateLoading value)? loading,
    TResult? Function(VerifyPasswordResetStateSuccess value)? success,
    TResult? Function(VerifyPasswordResetStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPasswordResetStateInitial value)? initial,
    TResult Function(VerifyPasswordResetStateLoading value)? loading,
    TResult Function(VerifyPasswordResetStateSuccess value)? success,
    TResult Function(VerifyPasswordResetStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPasswordResetStateCopyWith<$Res> {
  factory $VerifyPasswordResetStateCopyWith(VerifyPasswordResetState value,
          $Res Function(VerifyPasswordResetState) then) =
      _$VerifyPasswordResetStateCopyWithImpl<$Res, VerifyPasswordResetState>;
}

/// @nodoc
class _$VerifyPasswordResetStateCopyWithImpl<$Res,
        $Val extends VerifyPasswordResetState>
    implements $VerifyPasswordResetStateCopyWith<$Res> {
  _$VerifyPasswordResetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VerifyPasswordResetStateInitialImplCopyWith<$Res> {
  factory _$$VerifyPasswordResetStateInitialImplCopyWith(
          _$VerifyPasswordResetStateInitialImpl value,
          $Res Function(_$VerifyPasswordResetStateInitialImpl) then) =
      __$$VerifyPasswordResetStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyPasswordResetStateInitialImplCopyWithImpl<$Res>
    extends _$VerifyPasswordResetStateCopyWithImpl<$Res,
        _$VerifyPasswordResetStateInitialImpl>
    implements _$$VerifyPasswordResetStateInitialImplCopyWith<$Res> {
  __$$VerifyPasswordResetStateInitialImplCopyWithImpl(
      _$VerifyPasswordResetStateInitialImpl _value,
      $Res Function(_$VerifyPasswordResetStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyPasswordResetStateInitialImpl
    implements VerifyPasswordResetStateInitial {
  const _$VerifyPasswordResetStateInitialImpl();

  @override
  String toString() {
    return 'VerifyPasswordResetState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPasswordResetStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String? message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? message)? failure,
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
    required TResult Function(VerifyPasswordResetStateInitial value) initial,
    required TResult Function(VerifyPasswordResetStateLoading value) loading,
    required TResult Function(VerifyPasswordResetStateSuccess value) success,
    required TResult Function(VerifyPasswordResetStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyPasswordResetStateInitial value)? initial,
    TResult? Function(VerifyPasswordResetStateLoading value)? loading,
    TResult? Function(VerifyPasswordResetStateSuccess value)? success,
    TResult? Function(VerifyPasswordResetStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPasswordResetStateInitial value)? initial,
    TResult Function(VerifyPasswordResetStateLoading value)? loading,
    TResult Function(VerifyPasswordResetStateSuccess value)? success,
    TResult Function(VerifyPasswordResetStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class VerifyPasswordResetStateInitial
    implements VerifyPasswordResetState {
  const factory VerifyPasswordResetStateInitial() =
      _$VerifyPasswordResetStateInitialImpl;
}

/// @nodoc
abstract class _$$VerifyPasswordResetStateLoadingImplCopyWith<$Res> {
  factory _$$VerifyPasswordResetStateLoadingImplCopyWith(
          _$VerifyPasswordResetStateLoadingImpl value,
          $Res Function(_$VerifyPasswordResetStateLoadingImpl) then) =
      __$$VerifyPasswordResetStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyPasswordResetStateLoadingImplCopyWithImpl<$Res>
    extends _$VerifyPasswordResetStateCopyWithImpl<$Res,
        _$VerifyPasswordResetStateLoadingImpl>
    implements _$$VerifyPasswordResetStateLoadingImplCopyWith<$Res> {
  __$$VerifyPasswordResetStateLoadingImplCopyWithImpl(
      _$VerifyPasswordResetStateLoadingImpl _value,
      $Res Function(_$VerifyPasswordResetStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyPasswordResetStateLoadingImpl
    implements VerifyPasswordResetStateLoading {
  const _$VerifyPasswordResetStateLoadingImpl();

  @override
  String toString() {
    return 'VerifyPasswordResetState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPasswordResetStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String? message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? message)? failure,
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
    required TResult Function(VerifyPasswordResetStateInitial value) initial,
    required TResult Function(VerifyPasswordResetStateLoading value) loading,
    required TResult Function(VerifyPasswordResetStateSuccess value) success,
    required TResult Function(VerifyPasswordResetStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyPasswordResetStateInitial value)? initial,
    TResult? Function(VerifyPasswordResetStateLoading value)? loading,
    TResult? Function(VerifyPasswordResetStateSuccess value)? success,
    TResult? Function(VerifyPasswordResetStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPasswordResetStateInitial value)? initial,
    TResult Function(VerifyPasswordResetStateLoading value)? loading,
    TResult Function(VerifyPasswordResetStateSuccess value)? success,
    TResult Function(VerifyPasswordResetStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VerifyPasswordResetStateLoading
    implements VerifyPasswordResetState {
  const factory VerifyPasswordResetStateLoading() =
      _$VerifyPasswordResetStateLoadingImpl;
}

/// @nodoc
abstract class _$$VerifyPasswordResetStateSuccessImplCopyWith<$Res> {
  factory _$$VerifyPasswordResetStateSuccessImplCopyWith(
          _$VerifyPasswordResetStateSuccessImpl value,
          $Res Function(_$VerifyPasswordResetStateSuccessImpl) then) =
      __$$VerifyPasswordResetStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyPasswordResetStateSuccessImplCopyWithImpl<$Res>
    extends _$VerifyPasswordResetStateCopyWithImpl<$Res,
        _$VerifyPasswordResetStateSuccessImpl>
    implements _$$VerifyPasswordResetStateSuccessImplCopyWith<$Res> {
  __$$VerifyPasswordResetStateSuccessImplCopyWithImpl(
      _$VerifyPasswordResetStateSuccessImpl _value,
      $Res Function(_$VerifyPasswordResetStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyPasswordResetStateSuccessImpl
    implements VerifyPasswordResetStateSuccess {
  const _$VerifyPasswordResetStateSuccessImpl();

  @override
  String toString() {
    return 'VerifyPasswordResetState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPasswordResetStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String? message)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPasswordResetStateInitial value) initial,
    required TResult Function(VerifyPasswordResetStateLoading value) loading,
    required TResult Function(VerifyPasswordResetStateSuccess value) success,
    required TResult Function(VerifyPasswordResetStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyPasswordResetStateInitial value)? initial,
    TResult? Function(VerifyPasswordResetStateLoading value)? loading,
    TResult? Function(VerifyPasswordResetStateSuccess value)? success,
    TResult? Function(VerifyPasswordResetStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPasswordResetStateInitial value)? initial,
    TResult Function(VerifyPasswordResetStateLoading value)? loading,
    TResult Function(VerifyPasswordResetStateSuccess value)? success,
    TResult Function(VerifyPasswordResetStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class VerifyPasswordResetStateSuccess
    implements VerifyPasswordResetState {
  const factory VerifyPasswordResetStateSuccess() =
      _$VerifyPasswordResetStateSuccessImpl;
}

/// @nodoc
abstract class _$$VerifyPasswordResetStateFailureImplCopyWith<$Res> {
  factory _$$VerifyPasswordResetStateFailureImplCopyWith(
          _$VerifyPasswordResetStateFailureImpl value,
          $Res Function(_$VerifyPasswordResetStateFailureImpl) then) =
      __$$VerifyPasswordResetStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$VerifyPasswordResetStateFailureImplCopyWithImpl<$Res>
    extends _$VerifyPasswordResetStateCopyWithImpl<$Res,
        _$VerifyPasswordResetStateFailureImpl>
    implements _$$VerifyPasswordResetStateFailureImplCopyWith<$Res> {
  __$$VerifyPasswordResetStateFailureImplCopyWithImpl(
      _$VerifyPasswordResetStateFailureImpl _value,
      $Res Function(_$VerifyPasswordResetStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$VerifyPasswordResetStateFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VerifyPasswordResetStateFailureImpl
    implements VerifyPasswordResetStateFailure {
  const _$VerifyPasswordResetStateFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'VerifyPasswordResetState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPasswordResetStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPasswordResetStateFailureImplCopyWith<
          _$VerifyPasswordResetStateFailureImpl>
      get copyWith => __$$VerifyPasswordResetStateFailureImplCopyWithImpl<
          _$VerifyPasswordResetStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPasswordResetStateInitial value) initial,
    required TResult Function(VerifyPasswordResetStateLoading value) loading,
    required TResult Function(VerifyPasswordResetStateSuccess value) success,
    required TResult Function(VerifyPasswordResetStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerifyPasswordResetStateInitial value)? initial,
    TResult? Function(VerifyPasswordResetStateLoading value)? loading,
    TResult? Function(VerifyPasswordResetStateSuccess value)? success,
    TResult? Function(VerifyPasswordResetStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPasswordResetStateInitial value)? initial,
    TResult Function(VerifyPasswordResetStateLoading value)? loading,
    TResult Function(VerifyPasswordResetStateSuccess value)? success,
    TResult Function(VerifyPasswordResetStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class VerifyPasswordResetStateFailure
    implements VerifyPasswordResetState {
  const factory VerifyPasswordResetStateFailure({final String? message}) =
      _$VerifyPasswordResetStateFailureImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$VerifyPasswordResetStateFailureImplCopyWith<
          _$VerifyPasswordResetStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
