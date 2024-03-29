// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgetPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) onSubmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? onSubmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? onSubmited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgetPasswordEventStarted value) started,
    required TResult Function(ForgetPasswordEventOnSubmited value) onSubmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgetPasswordEventStarted value)? started,
    TResult? Function(ForgetPasswordEventOnSubmited value)? onSubmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgetPasswordEventStarted value)? started,
    TResult Function(ForgetPasswordEventOnSubmited value)? onSubmited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordEventCopyWith<$Res> {
  factory $ForgetPasswordEventCopyWith(
          ForgetPasswordEvent value, $Res Function(ForgetPasswordEvent) then) =
      _$ForgetPasswordEventCopyWithImpl<$Res, ForgetPasswordEvent>;
}

/// @nodoc
class _$ForgetPasswordEventCopyWithImpl<$Res, $Val extends ForgetPasswordEvent>
    implements $ForgetPasswordEventCopyWith<$Res> {
  _$ForgetPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ForgetPasswordEventStartedImplCopyWith<$Res> {
  factory _$$ForgetPasswordEventStartedImplCopyWith(
          _$ForgetPasswordEventStartedImpl value,
          $Res Function(_$ForgetPasswordEventStartedImpl) then) =
      __$$ForgetPasswordEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgetPasswordEventStartedImplCopyWithImpl<$Res>
    extends _$ForgetPasswordEventCopyWithImpl<$Res,
        _$ForgetPasswordEventStartedImpl>
    implements _$$ForgetPasswordEventStartedImplCopyWith<$Res> {
  __$$ForgetPasswordEventStartedImplCopyWithImpl(
      _$ForgetPasswordEventStartedImpl _value,
      $Res Function(_$ForgetPasswordEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgetPasswordEventStartedImpl implements ForgetPasswordEventStarted {
  const _$ForgetPasswordEventStartedImpl();

  @override
  String toString() {
    return 'ForgetPasswordEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) onSubmited,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? onSubmited,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? onSubmited,
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
    required TResult Function(ForgetPasswordEventStarted value) started,
    required TResult Function(ForgetPasswordEventOnSubmited value) onSubmited,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgetPasswordEventStarted value)? started,
    TResult? Function(ForgetPasswordEventOnSubmited value)? onSubmited,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgetPasswordEventStarted value)? started,
    TResult Function(ForgetPasswordEventOnSubmited value)? onSubmited,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class ForgetPasswordEventStarted implements ForgetPasswordEvent {
  const factory ForgetPasswordEventStarted() = _$ForgetPasswordEventStartedImpl;
}

/// @nodoc
abstract class _$$ForgetPasswordEventOnSubmitedImplCopyWith<$Res> {
  factory _$$ForgetPasswordEventOnSubmitedImplCopyWith(
          _$ForgetPasswordEventOnSubmitedImpl value,
          $Res Function(_$ForgetPasswordEventOnSubmitedImpl) then) =
      __$$ForgetPasswordEventOnSubmitedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgetPasswordEventOnSubmitedImplCopyWithImpl<$Res>
    extends _$ForgetPasswordEventCopyWithImpl<$Res,
        _$ForgetPasswordEventOnSubmitedImpl>
    implements _$$ForgetPasswordEventOnSubmitedImplCopyWith<$Res> {
  __$$ForgetPasswordEventOnSubmitedImplCopyWithImpl(
      _$ForgetPasswordEventOnSubmitedImpl _value,
      $Res Function(_$ForgetPasswordEventOnSubmitedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgetPasswordEventOnSubmitedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgetPasswordEventOnSubmitedImpl
    implements ForgetPasswordEventOnSubmited {
  const _$ForgetPasswordEventOnSubmitedImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ForgetPasswordEvent.onSubmited(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordEventOnSubmitedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordEventOnSubmitedImplCopyWith<
          _$ForgetPasswordEventOnSubmitedImpl>
      get copyWith => __$$ForgetPasswordEventOnSubmitedImplCopyWithImpl<
          _$ForgetPasswordEventOnSubmitedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) onSubmited,
  }) {
    return onSubmited(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? onSubmited,
  }) {
    return onSubmited?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? onSubmited,
    required TResult orElse(),
  }) {
    if (onSubmited != null) {
      return onSubmited(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgetPasswordEventStarted value) started,
    required TResult Function(ForgetPasswordEventOnSubmited value) onSubmited,
  }) {
    return onSubmited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgetPasswordEventStarted value)? started,
    TResult? Function(ForgetPasswordEventOnSubmited value)? onSubmited,
  }) {
    return onSubmited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgetPasswordEventStarted value)? started,
    TResult Function(ForgetPasswordEventOnSubmited value)? onSubmited,
    required TResult orElse(),
  }) {
    if (onSubmited != null) {
      return onSubmited(this);
    }
    return orElse();
  }
}

abstract class ForgetPasswordEventOnSubmited implements ForgetPasswordEvent {
  const factory ForgetPasswordEventOnSubmited({required final String email}) =
      _$ForgetPasswordEventOnSubmitedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$ForgetPasswordEventOnSubmitedImplCopyWith<
          _$ForgetPasswordEventOnSubmitedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgetPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) success,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? success,
    TResult? Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgetPasswordStateInitial value) initial,
    required TResult Function(ForgetPasswordStateLoading value) loading,
    required TResult Function(ForgetPasswordStateSuccess value) success,
    required TResult Function(ForgetPasswordStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgetPasswordStateInitial value)? initial,
    TResult? Function(ForgetPasswordStateLoading value)? loading,
    TResult? Function(ForgetPasswordStateSuccess value)? success,
    TResult? Function(ForgetPasswordStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgetPasswordStateInitial value)? initial,
    TResult Function(ForgetPasswordStateLoading value)? loading,
    TResult Function(ForgetPasswordStateSuccess value)? success,
    TResult Function(ForgetPasswordStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordStateCopyWith<$Res> {
  factory $ForgetPasswordStateCopyWith(
          ForgetPasswordState value, $Res Function(ForgetPasswordState) then) =
      _$ForgetPasswordStateCopyWithImpl<$Res, ForgetPasswordState>;
}

/// @nodoc
class _$ForgetPasswordStateCopyWithImpl<$Res, $Val extends ForgetPasswordState>
    implements $ForgetPasswordStateCopyWith<$Res> {
  _$ForgetPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ForgetPasswordStateInitialImplCopyWith<$Res> {
  factory _$$ForgetPasswordStateInitialImplCopyWith(
          _$ForgetPasswordStateInitialImpl value,
          $Res Function(_$ForgetPasswordStateInitialImpl) then) =
      __$$ForgetPasswordStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgetPasswordStateInitialImplCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res,
        _$ForgetPasswordStateInitialImpl>
    implements _$$ForgetPasswordStateInitialImplCopyWith<$Res> {
  __$$ForgetPasswordStateInitialImplCopyWithImpl(
      _$ForgetPasswordStateInitialImpl _value,
      $Res Function(_$ForgetPasswordStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgetPasswordStateInitialImpl implements ForgetPasswordStateInitial {
  const _$ForgetPasswordStateInitialImpl();

  @override
  String toString() {
    return 'ForgetPasswordState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) success,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? success,
    TResult? Function(String? message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? success,
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
    required TResult Function(ForgetPasswordStateInitial value) initial,
    required TResult Function(ForgetPasswordStateLoading value) loading,
    required TResult Function(ForgetPasswordStateSuccess value) success,
    required TResult Function(ForgetPasswordStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgetPasswordStateInitial value)? initial,
    TResult? Function(ForgetPasswordStateLoading value)? loading,
    TResult? Function(ForgetPasswordStateSuccess value)? success,
    TResult? Function(ForgetPasswordStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgetPasswordStateInitial value)? initial,
    TResult Function(ForgetPasswordStateLoading value)? loading,
    TResult Function(ForgetPasswordStateSuccess value)? success,
    TResult Function(ForgetPasswordStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ForgetPasswordStateInitial implements ForgetPasswordState {
  const factory ForgetPasswordStateInitial() = _$ForgetPasswordStateInitialImpl;
}

/// @nodoc
abstract class _$$ForgetPasswordStateLoadingImplCopyWith<$Res> {
  factory _$$ForgetPasswordStateLoadingImplCopyWith(
          _$ForgetPasswordStateLoadingImpl value,
          $Res Function(_$ForgetPasswordStateLoadingImpl) then) =
      __$$ForgetPasswordStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgetPasswordStateLoadingImplCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res,
        _$ForgetPasswordStateLoadingImpl>
    implements _$$ForgetPasswordStateLoadingImplCopyWith<$Res> {
  __$$ForgetPasswordStateLoadingImplCopyWithImpl(
      _$ForgetPasswordStateLoadingImpl _value,
      $Res Function(_$ForgetPasswordStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgetPasswordStateLoadingImpl implements ForgetPasswordStateLoading {
  const _$ForgetPasswordStateLoadingImpl();

  @override
  String toString() {
    return 'ForgetPasswordState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) success,
    required TResult Function(String? message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? success,
    TResult? Function(String? message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? success,
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
    required TResult Function(ForgetPasswordStateInitial value) initial,
    required TResult Function(ForgetPasswordStateLoading value) loading,
    required TResult Function(ForgetPasswordStateSuccess value) success,
    required TResult Function(ForgetPasswordStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgetPasswordStateInitial value)? initial,
    TResult? Function(ForgetPasswordStateLoading value)? loading,
    TResult? Function(ForgetPasswordStateSuccess value)? success,
    TResult? Function(ForgetPasswordStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgetPasswordStateInitial value)? initial,
    TResult Function(ForgetPasswordStateLoading value)? loading,
    TResult Function(ForgetPasswordStateSuccess value)? success,
    TResult Function(ForgetPasswordStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ForgetPasswordStateLoading implements ForgetPasswordState {
  const factory ForgetPasswordStateLoading() = _$ForgetPasswordStateLoadingImpl;
}

/// @nodoc
abstract class _$$ForgetPasswordStateSuccessImplCopyWith<$Res> {
  factory _$$ForgetPasswordStateSuccessImplCopyWith(
          _$ForgetPasswordStateSuccessImpl value,
          $Res Function(_$ForgetPasswordStateSuccessImpl) then) =
      __$$ForgetPasswordStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ForgetPasswordStateSuccessImplCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res,
        _$ForgetPasswordStateSuccessImpl>
    implements _$$ForgetPasswordStateSuccessImplCopyWith<$Res> {
  __$$ForgetPasswordStateSuccessImplCopyWithImpl(
      _$ForgetPasswordStateSuccessImpl _value,
      $Res Function(_$ForgetPasswordStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ForgetPasswordStateSuccessImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ForgetPasswordStateSuccessImpl implements ForgetPasswordStateSuccess {
  const _$ForgetPasswordStateSuccessImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ForgetPasswordState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordStateSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordStateSuccessImplCopyWith<_$ForgetPasswordStateSuccessImpl>
      get copyWith => __$$ForgetPasswordStateSuccessImplCopyWithImpl<
          _$ForgetPasswordStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) success,
    required TResult Function(String? message) failure,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? success,
    TResult? Function(String? message)? failure,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgetPasswordStateInitial value) initial,
    required TResult Function(ForgetPasswordStateLoading value) loading,
    required TResult Function(ForgetPasswordStateSuccess value) success,
    required TResult Function(ForgetPasswordStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgetPasswordStateInitial value)? initial,
    TResult? Function(ForgetPasswordStateLoading value)? loading,
    TResult? Function(ForgetPasswordStateSuccess value)? success,
    TResult? Function(ForgetPasswordStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgetPasswordStateInitial value)? initial,
    TResult Function(ForgetPasswordStateLoading value)? loading,
    TResult Function(ForgetPasswordStateSuccess value)? success,
    TResult Function(ForgetPasswordStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ForgetPasswordStateSuccess implements ForgetPasswordState {
  const factory ForgetPasswordStateSuccess({final String? message}) =
      _$ForgetPasswordStateSuccessImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ForgetPasswordStateSuccessImplCopyWith<_$ForgetPasswordStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgetPasswordStateFailureImplCopyWith<$Res> {
  factory _$$ForgetPasswordStateFailureImplCopyWith(
          _$ForgetPasswordStateFailureImpl value,
          $Res Function(_$ForgetPasswordStateFailureImpl) then) =
      __$$ForgetPasswordStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ForgetPasswordStateFailureImplCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res,
        _$ForgetPasswordStateFailureImpl>
    implements _$$ForgetPasswordStateFailureImplCopyWith<$Res> {
  __$$ForgetPasswordStateFailureImplCopyWithImpl(
      _$ForgetPasswordStateFailureImpl _value,
      $Res Function(_$ForgetPasswordStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ForgetPasswordStateFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ForgetPasswordStateFailureImpl implements ForgetPasswordStateFailure {
  const _$ForgetPasswordStateFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ForgetPasswordState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordStateFailureImplCopyWith<_$ForgetPasswordStateFailureImpl>
      get copyWith => __$$ForgetPasswordStateFailureImplCopyWithImpl<
          _$ForgetPasswordStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) success,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? success,
    TResult? Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? success,
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
    required TResult Function(ForgetPasswordStateInitial value) initial,
    required TResult Function(ForgetPasswordStateLoading value) loading,
    required TResult Function(ForgetPasswordStateSuccess value) success,
    required TResult Function(ForgetPasswordStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgetPasswordStateInitial value)? initial,
    TResult? Function(ForgetPasswordStateLoading value)? loading,
    TResult? Function(ForgetPasswordStateSuccess value)? success,
    TResult? Function(ForgetPasswordStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgetPasswordStateInitial value)? initial,
    TResult Function(ForgetPasswordStateLoading value)? loading,
    TResult Function(ForgetPasswordStateSuccess value)? success,
    TResult Function(ForgetPasswordStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ForgetPasswordStateFailure implements ForgetPasswordState {
  const factory ForgetPasswordStateFailure({final String? message}) =
      _$ForgetPasswordStateFailureImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ForgetPasswordStateFailureImplCopyWith<_$ForgetPasswordStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
