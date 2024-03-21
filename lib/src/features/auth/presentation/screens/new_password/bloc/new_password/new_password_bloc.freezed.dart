// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onSubmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onSubmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onSubmited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewPasswordEventStarted value) started,
    required TResult Function(NewPasswordEventOnSubmited value) onSubmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewPasswordEventStarted value)? started,
    TResult? Function(NewPasswordEventOnSubmited value)? onSubmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPasswordEventStarted value)? started,
    TResult Function(NewPasswordEventOnSubmited value)? onSubmited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPasswordEventCopyWith<$Res> {
  factory $NewPasswordEventCopyWith(
          NewPasswordEvent value, $Res Function(NewPasswordEvent) then) =
      _$NewPasswordEventCopyWithImpl<$Res, NewPasswordEvent>;
}

/// @nodoc
class _$NewPasswordEventCopyWithImpl<$Res, $Val extends NewPasswordEvent>
    implements $NewPasswordEventCopyWith<$Res> {
  _$NewPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewPasswordEventStartedImplCopyWith<$Res> {
  factory _$$NewPasswordEventStartedImplCopyWith(
          _$NewPasswordEventStartedImpl value,
          $Res Function(_$NewPasswordEventStartedImpl) then) =
      __$$NewPasswordEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewPasswordEventStartedImplCopyWithImpl<$Res>
    extends _$NewPasswordEventCopyWithImpl<$Res, _$NewPasswordEventStartedImpl>
    implements _$$NewPasswordEventStartedImplCopyWith<$Res> {
  __$$NewPasswordEventStartedImplCopyWithImpl(
      _$NewPasswordEventStartedImpl _value,
      $Res Function(_$NewPasswordEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewPasswordEventStartedImpl implements NewPasswordEventStarted {
  const _$NewPasswordEventStartedImpl();

  @override
  String toString() {
    return 'NewPasswordEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onSubmited,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onSubmited,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onSubmited,
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
    required TResult Function(NewPasswordEventStarted value) started,
    required TResult Function(NewPasswordEventOnSubmited value) onSubmited,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewPasswordEventStarted value)? started,
    TResult? Function(NewPasswordEventOnSubmited value)? onSubmited,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPasswordEventStarted value)? started,
    TResult Function(NewPasswordEventOnSubmited value)? onSubmited,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class NewPasswordEventStarted implements NewPasswordEvent {
  const factory NewPasswordEventStarted() = _$NewPasswordEventStartedImpl;
}

/// @nodoc
abstract class _$$NewPasswordEventOnSubmitedImplCopyWith<$Res> {
  factory _$$NewPasswordEventOnSubmitedImplCopyWith(
          _$NewPasswordEventOnSubmitedImpl value,
          $Res Function(_$NewPasswordEventOnSubmitedImpl) then) =
      __$$NewPasswordEventOnSubmitedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewPasswordEventOnSubmitedImplCopyWithImpl<$Res>
    extends _$NewPasswordEventCopyWithImpl<$Res,
        _$NewPasswordEventOnSubmitedImpl>
    implements _$$NewPasswordEventOnSubmitedImplCopyWith<$Res> {
  __$$NewPasswordEventOnSubmitedImplCopyWithImpl(
      _$NewPasswordEventOnSubmitedImpl _value,
      $Res Function(_$NewPasswordEventOnSubmitedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewPasswordEventOnSubmitedImpl implements NewPasswordEventOnSubmited {
  const _$NewPasswordEventOnSubmitedImpl();

  @override
  String toString() {
    return 'NewPasswordEvent.onSubmited()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordEventOnSubmitedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onSubmited,
  }) {
    return onSubmited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onSubmited,
  }) {
    return onSubmited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onSubmited,
    required TResult orElse(),
  }) {
    if (onSubmited != null) {
      return onSubmited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewPasswordEventStarted value) started,
    required TResult Function(NewPasswordEventOnSubmited value) onSubmited,
  }) {
    return onSubmited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewPasswordEventStarted value)? started,
    TResult? Function(NewPasswordEventOnSubmited value)? onSubmited,
  }) {
    return onSubmited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPasswordEventStarted value)? started,
    TResult Function(NewPasswordEventOnSubmited value)? onSubmited,
    required TResult orElse(),
  }) {
    if (onSubmited != null) {
      return onSubmited(this);
    }
    return orElse();
  }
}

abstract class NewPasswordEventOnSubmited implements NewPasswordEvent {
  const factory NewPasswordEventOnSubmited() = _$NewPasswordEventOnSubmitedImpl;
}

/// @nodoc
mixin _$NewPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewPasswordStateInitial value) initial,
    required TResult Function(NewPasswordStateLoading value) loading,
    required TResult Function(NewPasswordStateSuccess value) success,
    required TResult Function(NewPasswordStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewPasswordStateInitial value)? initial,
    TResult? Function(NewPasswordStateLoading value)? loading,
    TResult? Function(NewPasswordStateSuccess value)? success,
    TResult? Function(NewPasswordStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPasswordStateInitial value)? initial,
    TResult Function(NewPasswordStateLoading value)? loading,
    TResult Function(NewPasswordStateSuccess value)? success,
    TResult Function(NewPasswordStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPasswordStateCopyWith<$Res> {
  factory $NewPasswordStateCopyWith(
          NewPasswordState value, $Res Function(NewPasswordState) then) =
      _$NewPasswordStateCopyWithImpl<$Res, NewPasswordState>;
}

/// @nodoc
class _$NewPasswordStateCopyWithImpl<$Res, $Val extends NewPasswordState>
    implements $NewPasswordStateCopyWith<$Res> {
  _$NewPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewPasswordStateInitialImplCopyWith<$Res> {
  factory _$$NewPasswordStateInitialImplCopyWith(
          _$NewPasswordStateInitialImpl value,
          $Res Function(_$NewPasswordStateInitialImpl) then) =
      __$$NewPasswordStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewPasswordStateInitialImplCopyWithImpl<$Res>
    extends _$NewPasswordStateCopyWithImpl<$Res, _$NewPasswordStateInitialImpl>
    implements _$$NewPasswordStateInitialImplCopyWith<$Res> {
  __$$NewPasswordStateInitialImplCopyWithImpl(
      _$NewPasswordStateInitialImpl _value,
      $Res Function(_$NewPasswordStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewPasswordStateInitialImpl implements NewPasswordStateInitial {
  const _$NewPasswordStateInitialImpl();

  @override
  String toString() {
    return 'NewPasswordState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
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
    required TResult Function(NewPasswordStateInitial value) initial,
    required TResult Function(NewPasswordStateLoading value) loading,
    required TResult Function(NewPasswordStateSuccess value) success,
    required TResult Function(NewPasswordStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewPasswordStateInitial value)? initial,
    TResult? Function(NewPasswordStateLoading value)? loading,
    TResult? Function(NewPasswordStateSuccess value)? success,
    TResult? Function(NewPasswordStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPasswordStateInitial value)? initial,
    TResult Function(NewPasswordStateLoading value)? loading,
    TResult Function(NewPasswordStateSuccess value)? success,
    TResult Function(NewPasswordStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NewPasswordStateInitial implements NewPasswordState {
  const factory NewPasswordStateInitial() = _$NewPasswordStateInitialImpl;
}

/// @nodoc
abstract class _$$NewPasswordStateLoadingImplCopyWith<$Res> {
  factory _$$NewPasswordStateLoadingImplCopyWith(
          _$NewPasswordStateLoadingImpl value,
          $Res Function(_$NewPasswordStateLoadingImpl) then) =
      __$$NewPasswordStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewPasswordStateLoadingImplCopyWithImpl<$Res>
    extends _$NewPasswordStateCopyWithImpl<$Res, _$NewPasswordStateLoadingImpl>
    implements _$$NewPasswordStateLoadingImplCopyWith<$Res> {
  __$$NewPasswordStateLoadingImplCopyWithImpl(
      _$NewPasswordStateLoadingImpl _value,
      $Res Function(_$NewPasswordStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewPasswordStateLoadingImpl implements NewPasswordStateLoading {
  const _$NewPasswordStateLoadingImpl();

  @override
  String toString() {
    return 'NewPasswordState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
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
    required TResult Function(NewPasswordStateInitial value) initial,
    required TResult Function(NewPasswordStateLoading value) loading,
    required TResult Function(NewPasswordStateSuccess value) success,
    required TResult Function(NewPasswordStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewPasswordStateInitial value)? initial,
    TResult? Function(NewPasswordStateLoading value)? loading,
    TResult? Function(NewPasswordStateSuccess value)? success,
    TResult? Function(NewPasswordStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPasswordStateInitial value)? initial,
    TResult Function(NewPasswordStateLoading value)? loading,
    TResult Function(NewPasswordStateSuccess value)? success,
    TResult Function(NewPasswordStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NewPasswordStateLoading implements NewPasswordState {
  const factory NewPasswordStateLoading() = _$NewPasswordStateLoadingImpl;
}

/// @nodoc
abstract class _$$NewPasswordStateSuccessImplCopyWith<$Res> {
  factory _$$NewPasswordStateSuccessImplCopyWith(
          _$NewPasswordStateSuccessImpl value,
          $Res Function(_$NewPasswordStateSuccessImpl) then) =
      __$$NewPasswordStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewPasswordStateSuccessImplCopyWithImpl<$Res>
    extends _$NewPasswordStateCopyWithImpl<$Res, _$NewPasswordStateSuccessImpl>
    implements _$$NewPasswordStateSuccessImplCopyWith<$Res> {
  __$$NewPasswordStateSuccessImplCopyWithImpl(
      _$NewPasswordStateSuccessImpl _value,
      $Res Function(_$NewPasswordStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewPasswordStateSuccessImpl implements NewPasswordStateSuccess {
  const _$NewPasswordStateSuccessImpl();

  @override
  String toString() {
    return 'NewPasswordState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
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
    required TResult Function(NewPasswordStateInitial value) initial,
    required TResult Function(NewPasswordStateLoading value) loading,
    required TResult Function(NewPasswordStateSuccess value) success,
    required TResult Function(NewPasswordStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewPasswordStateInitial value)? initial,
    TResult? Function(NewPasswordStateLoading value)? loading,
    TResult? Function(NewPasswordStateSuccess value)? success,
    TResult? Function(NewPasswordStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPasswordStateInitial value)? initial,
    TResult Function(NewPasswordStateLoading value)? loading,
    TResult Function(NewPasswordStateSuccess value)? success,
    TResult Function(NewPasswordStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class NewPasswordStateSuccess implements NewPasswordState {
  const factory NewPasswordStateSuccess() = _$NewPasswordStateSuccessImpl;
}

/// @nodoc
abstract class _$$NewPasswordStateFailureImplCopyWith<$Res> {
  factory _$$NewPasswordStateFailureImplCopyWith(
          _$NewPasswordStateFailureImpl value,
          $Res Function(_$NewPasswordStateFailureImpl) then) =
      __$$NewPasswordStateFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewPasswordStateFailureImplCopyWithImpl<$Res>
    extends _$NewPasswordStateCopyWithImpl<$Res, _$NewPasswordStateFailureImpl>
    implements _$$NewPasswordStateFailureImplCopyWith<$Res> {
  __$$NewPasswordStateFailureImplCopyWithImpl(
      _$NewPasswordStateFailureImpl _value,
      $Res Function(_$NewPasswordStateFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewPasswordStateFailureImpl implements NewPasswordStateFailure {
  const _$NewPasswordStateFailureImpl();

  @override
  String toString() {
    return 'NewPasswordState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordStateFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewPasswordStateInitial value) initial,
    required TResult Function(NewPasswordStateLoading value) loading,
    required TResult Function(NewPasswordStateSuccess value) success,
    required TResult Function(NewPasswordStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewPasswordStateInitial value)? initial,
    TResult? Function(NewPasswordStateLoading value)? loading,
    TResult? Function(NewPasswordStateSuccess value)? success,
    TResult? Function(NewPasswordStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPasswordStateInitial value)? initial,
    TResult Function(NewPasswordStateLoading value)? loading,
    TResult Function(NewPasswordStateSuccess value)? success,
    TResult Function(NewPasswordStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class NewPasswordStateFailure implements NewPasswordState {
  const factory NewPasswordStateFailure() = _$NewPasswordStateFailureImpl;
}
