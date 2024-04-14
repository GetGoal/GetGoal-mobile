// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoogleSignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onGoogleLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onGoogleLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onGoogleLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoogleSignInStarted value) started,
    required TResult Function(GoogleSignInOnGoogleLogin value) onGoogleLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleSignInStarted value)? started,
    TResult? Function(GoogleSignInOnGoogleLogin value)? onGoogleLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleSignInStarted value)? started,
    TResult Function(GoogleSignInOnGoogleLogin value)? onGoogleLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleSignInEventCopyWith<$Res> {
  factory $GoogleSignInEventCopyWith(
          GoogleSignInEvent value, $Res Function(GoogleSignInEvent) then) =
      _$GoogleSignInEventCopyWithImpl<$Res, GoogleSignInEvent>;
}

/// @nodoc
class _$GoogleSignInEventCopyWithImpl<$Res, $Val extends GoogleSignInEvent>
    implements $GoogleSignInEventCopyWith<$Res> {
  _$GoogleSignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GoogleSignInStartedImplCopyWith<$Res> {
  factory _$$GoogleSignInStartedImplCopyWith(_$GoogleSignInStartedImpl value,
          $Res Function(_$GoogleSignInStartedImpl) then) =
      __$$GoogleSignInStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleSignInStartedImplCopyWithImpl<$Res>
    extends _$GoogleSignInEventCopyWithImpl<$Res, _$GoogleSignInStartedImpl>
    implements _$$GoogleSignInStartedImplCopyWith<$Res> {
  __$$GoogleSignInStartedImplCopyWithImpl(_$GoogleSignInStartedImpl _value,
      $Res Function(_$GoogleSignInStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleSignInStartedImpl implements GoogleSignInStarted {
  const _$GoogleSignInStartedImpl();

  @override
  String toString() {
    return 'GoogleSignInEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSignInStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onGoogleLogin,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onGoogleLogin,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onGoogleLogin,
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
    required TResult Function(GoogleSignInStarted value) started,
    required TResult Function(GoogleSignInOnGoogleLogin value) onGoogleLogin,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleSignInStarted value)? started,
    TResult? Function(GoogleSignInOnGoogleLogin value)? onGoogleLogin,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleSignInStarted value)? started,
    TResult Function(GoogleSignInOnGoogleLogin value)? onGoogleLogin,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class GoogleSignInStarted implements GoogleSignInEvent {
  const factory GoogleSignInStarted() = _$GoogleSignInStartedImpl;
}

/// @nodoc
abstract class _$$GoogleSignInOnGoogleLoginImplCopyWith<$Res> {
  factory _$$GoogleSignInOnGoogleLoginImplCopyWith(
          _$GoogleSignInOnGoogleLoginImpl value,
          $Res Function(_$GoogleSignInOnGoogleLoginImpl) then) =
      __$$GoogleSignInOnGoogleLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleSignInOnGoogleLoginImplCopyWithImpl<$Res>
    extends _$GoogleSignInEventCopyWithImpl<$Res,
        _$GoogleSignInOnGoogleLoginImpl>
    implements _$$GoogleSignInOnGoogleLoginImplCopyWith<$Res> {
  __$$GoogleSignInOnGoogleLoginImplCopyWithImpl(
      _$GoogleSignInOnGoogleLoginImpl _value,
      $Res Function(_$GoogleSignInOnGoogleLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleSignInOnGoogleLoginImpl implements GoogleSignInOnGoogleLogin {
  const _$GoogleSignInOnGoogleLoginImpl();

  @override
  String toString() {
    return 'GoogleSignInEvent.onGoogleLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSignInOnGoogleLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onGoogleLogin,
  }) {
    return onGoogleLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onGoogleLogin,
  }) {
    return onGoogleLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onGoogleLogin,
    required TResult orElse(),
  }) {
    if (onGoogleLogin != null) {
      return onGoogleLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoogleSignInStarted value) started,
    required TResult Function(GoogleSignInOnGoogleLogin value) onGoogleLogin,
  }) {
    return onGoogleLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleSignInStarted value)? started,
    TResult? Function(GoogleSignInOnGoogleLogin value)? onGoogleLogin,
  }) {
    return onGoogleLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleSignInStarted value)? started,
    TResult Function(GoogleSignInOnGoogleLogin value)? onGoogleLogin,
    required TResult orElse(),
  }) {
    if (onGoogleLogin != null) {
      return onGoogleLogin(this);
    }
    return orElse();
  }
}

abstract class GoogleSignInOnGoogleLogin implements GoogleSignInEvent {
  const factory GoogleSignInOnGoogleLogin() = _$GoogleSignInOnGoogleLoginImpl;
}

/// @nodoc
mixin _$GoogleSignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() incompletePreference,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? incompletePreference,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? incompletePreference,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoogleSignInInitial value) initial,
    required TResult Function(GoogleSignInLoading value) loading,
    required TResult Function(GoogleSignInSuccess value) success,
    required TResult Function(GoogleSignInIncompletePreference value)
        incompletePreference,
    required TResult Function(GoogleSignInFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleSignInInitial value)? initial,
    TResult? Function(GoogleSignInLoading value)? loading,
    TResult? Function(GoogleSignInSuccess value)? success,
    TResult? Function(GoogleSignInIncompletePreference value)?
        incompletePreference,
    TResult? Function(GoogleSignInFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleSignInInitial value)? initial,
    TResult Function(GoogleSignInLoading value)? loading,
    TResult Function(GoogleSignInSuccess value)? success,
    TResult Function(GoogleSignInIncompletePreference value)?
        incompletePreference,
    TResult Function(GoogleSignInFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleSignInStateCopyWith<$Res> {
  factory $GoogleSignInStateCopyWith(
          GoogleSignInState value, $Res Function(GoogleSignInState) then) =
      _$GoogleSignInStateCopyWithImpl<$Res, GoogleSignInState>;
}

/// @nodoc
class _$GoogleSignInStateCopyWithImpl<$Res, $Val extends GoogleSignInState>
    implements $GoogleSignInStateCopyWith<$Res> {
  _$GoogleSignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GoogleSignInInitialImplCopyWith<$Res> {
  factory _$$GoogleSignInInitialImplCopyWith(_$GoogleSignInInitialImpl value,
          $Res Function(_$GoogleSignInInitialImpl) then) =
      __$$GoogleSignInInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleSignInInitialImplCopyWithImpl<$Res>
    extends _$GoogleSignInStateCopyWithImpl<$Res, _$GoogleSignInInitialImpl>
    implements _$$GoogleSignInInitialImplCopyWith<$Res> {
  __$$GoogleSignInInitialImplCopyWithImpl(_$GoogleSignInInitialImpl _value,
      $Res Function(_$GoogleSignInInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleSignInInitialImpl implements GoogleSignInInitial {
  const _$GoogleSignInInitialImpl();

  @override
  String toString() {
    return 'GoogleSignInState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSignInInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() incompletePreference,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? incompletePreference,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? incompletePreference,
    TResult Function(String error)? failure,
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
    required TResult Function(GoogleSignInInitial value) initial,
    required TResult Function(GoogleSignInLoading value) loading,
    required TResult Function(GoogleSignInSuccess value) success,
    required TResult Function(GoogleSignInIncompletePreference value)
        incompletePreference,
    required TResult Function(GoogleSignInFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleSignInInitial value)? initial,
    TResult? Function(GoogleSignInLoading value)? loading,
    TResult? Function(GoogleSignInSuccess value)? success,
    TResult? Function(GoogleSignInIncompletePreference value)?
        incompletePreference,
    TResult? Function(GoogleSignInFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleSignInInitial value)? initial,
    TResult Function(GoogleSignInLoading value)? loading,
    TResult Function(GoogleSignInSuccess value)? success,
    TResult Function(GoogleSignInIncompletePreference value)?
        incompletePreference,
    TResult Function(GoogleSignInFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GoogleSignInInitial implements GoogleSignInState {
  const factory GoogleSignInInitial() = _$GoogleSignInInitialImpl;
}

/// @nodoc
abstract class _$$GoogleSignInLoadingImplCopyWith<$Res> {
  factory _$$GoogleSignInLoadingImplCopyWith(_$GoogleSignInLoadingImpl value,
          $Res Function(_$GoogleSignInLoadingImpl) then) =
      __$$GoogleSignInLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleSignInLoadingImplCopyWithImpl<$Res>
    extends _$GoogleSignInStateCopyWithImpl<$Res, _$GoogleSignInLoadingImpl>
    implements _$$GoogleSignInLoadingImplCopyWith<$Res> {
  __$$GoogleSignInLoadingImplCopyWithImpl(_$GoogleSignInLoadingImpl _value,
      $Res Function(_$GoogleSignInLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleSignInLoadingImpl implements GoogleSignInLoading {
  const _$GoogleSignInLoadingImpl();

  @override
  String toString() {
    return 'GoogleSignInState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSignInLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() incompletePreference,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? incompletePreference,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? incompletePreference,
    TResult Function(String error)? failure,
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
    required TResult Function(GoogleSignInInitial value) initial,
    required TResult Function(GoogleSignInLoading value) loading,
    required TResult Function(GoogleSignInSuccess value) success,
    required TResult Function(GoogleSignInIncompletePreference value)
        incompletePreference,
    required TResult Function(GoogleSignInFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleSignInInitial value)? initial,
    TResult? Function(GoogleSignInLoading value)? loading,
    TResult? Function(GoogleSignInSuccess value)? success,
    TResult? Function(GoogleSignInIncompletePreference value)?
        incompletePreference,
    TResult? Function(GoogleSignInFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleSignInInitial value)? initial,
    TResult Function(GoogleSignInLoading value)? loading,
    TResult Function(GoogleSignInSuccess value)? success,
    TResult Function(GoogleSignInIncompletePreference value)?
        incompletePreference,
    TResult Function(GoogleSignInFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GoogleSignInLoading implements GoogleSignInState {
  const factory GoogleSignInLoading() = _$GoogleSignInLoadingImpl;
}

/// @nodoc
abstract class _$$GoogleSignInSuccessImplCopyWith<$Res> {
  factory _$$GoogleSignInSuccessImplCopyWith(_$GoogleSignInSuccessImpl value,
          $Res Function(_$GoogleSignInSuccessImpl) then) =
      __$$GoogleSignInSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleSignInSuccessImplCopyWithImpl<$Res>
    extends _$GoogleSignInStateCopyWithImpl<$Res, _$GoogleSignInSuccessImpl>
    implements _$$GoogleSignInSuccessImplCopyWith<$Res> {
  __$$GoogleSignInSuccessImplCopyWithImpl(_$GoogleSignInSuccessImpl _value,
      $Res Function(_$GoogleSignInSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleSignInSuccessImpl implements GoogleSignInSuccess {
  const _$GoogleSignInSuccessImpl();

  @override
  String toString() {
    return 'GoogleSignInState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSignInSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() incompletePreference,
    required TResult Function(String error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? incompletePreference,
    TResult? Function(String error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? incompletePreference,
    TResult Function(String error)? failure,
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
    required TResult Function(GoogleSignInInitial value) initial,
    required TResult Function(GoogleSignInLoading value) loading,
    required TResult Function(GoogleSignInSuccess value) success,
    required TResult Function(GoogleSignInIncompletePreference value)
        incompletePreference,
    required TResult Function(GoogleSignInFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleSignInInitial value)? initial,
    TResult? Function(GoogleSignInLoading value)? loading,
    TResult? Function(GoogleSignInSuccess value)? success,
    TResult? Function(GoogleSignInIncompletePreference value)?
        incompletePreference,
    TResult? Function(GoogleSignInFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleSignInInitial value)? initial,
    TResult Function(GoogleSignInLoading value)? loading,
    TResult Function(GoogleSignInSuccess value)? success,
    TResult Function(GoogleSignInIncompletePreference value)?
        incompletePreference,
    TResult Function(GoogleSignInFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GoogleSignInSuccess implements GoogleSignInState {
  const factory GoogleSignInSuccess() = _$GoogleSignInSuccessImpl;
}

/// @nodoc
abstract class _$$GoogleSignInIncompletePreferenceImplCopyWith<$Res> {
  factory _$$GoogleSignInIncompletePreferenceImplCopyWith(
          _$GoogleSignInIncompletePreferenceImpl value,
          $Res Function(_$GoogleSignInIncompletePreferenceImpl) then) =
      __$$GoogleSignInIncompletePreferenceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleSignInIncompletePreferenceImplCopyWithImpl<$Res>
    extends _$GoogleSignInStateCopyWithImpl<$Res,
        _$GoogleSignInIncompletePreferenceImpl>
    implements _$$GoogleSignInIncompletePreferenceImplCopyWith<$Res> {
  __$$GoogleSignInIncompletePreferenceImplCopyWithImpl(
      _$GoogleSignInIncompletePreferenceImpl _value,
      $Res Function(_$GoogleSignInIncompletePreferenceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleSignInIncompletePreferenceImpl
    implements GoogleSignInIncompletePreference {
  const _$GoogleSignInIncompletePreferenceImpl();

  @override
  String toString() {
    return 'GoogleSignInState.incompletePreference()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSignInIncompletePreferenceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() incompletePreference,
    required TResult Function(String error) failure,
  }) {
    return incompletePreference();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? incompletePreference,
    TResult? Function(String error)? failure,
  }) {
    return incompletePreference?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? incompletePreference,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (incompletePreference != null) {
      return incompletePreference();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoogleSignInInitial value) initial,
    required TResult Function(GoogleSignInLoading value) loading,
    required TResult Function(GoogleSignInSuccess value) success,
    required TResult Function(GoogleSignInIncompletePreference value)
        incompletePreference,
    required TResult Function(GoogleSignInFailure value) failure,
  }) {
    return incompletePreference(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleSignInInitial value)? initial,
    TResult? Function(GoogleSignInLoading value)? loading,
    TResult? Function(GoogleSignInSuccess value)? success,
    TResult? Function(GoogleSignInIncompletePreference value)?
        incompletePreference,
    TResult? Function(GoogleSignInFailure value)? failure,
  }) {
    return incompletePreference?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleSignInInitial value)? initial,
    TResult Function(GoogleSignInLoading value)? loading,
    TResult Function(GoogleSignInSuccess value)? success,
    TResult Function(GoogleSignInIncompletePreference value)?
        incompletePreference,
    TResult Function(GoogleSignInFailure value)? failure,
    required TResult orElse(),
  }) {
    if (incompletePreference != null) {
      return incompletePreference(this);
    }
    return orElse();
  }
}

abstract class GoogleSignInIncompletePreference implements GoogleSignInState {
  const factory GoogleSignInIncompletePreference() =
      _$GoogleSignInIncompletePreferenceImpl;
}

/// @nodoc
abstract class _$$GoogleSignInFailureImplCopyWith<$Res> {
  factory _$$GoogleSignInFailureImplCopyWith(_$GoogleSignInFailureImpl value,
          $Res Function(_$GoogleSignInFailureImpl) then) =
      __$$GoogleSignInFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GoogleSignInFailureImplCopyWithImpl<$Res>
    extends _$GoogleSignInStateCopyWithImpl<$Res, _$GoogleSignInFailureImpl>
    implements _$$GoogleSignInFailureImplCopyWith<$Res> {
  __$$GoogleSignInFailureImplCopyWithImpl(_$GoogleSignInFailureImpl _value,
      $Res Function(_$GoogleSignInFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GoogleSignInFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GoogleSignInFailureImpl implements GoogleSignInFailure {
  const _$GoogleSignInFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'GoogleSignInState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSignInFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleSignInFailureImplCopyWith<_$GoogleSignInFailureImpl> get copyWith =>
      __$$GoogleSignInFailureImplCopyWithImpl<_$GoogleSignInFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() incompletePreference,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? incompletePreference,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? incompletePreference,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoogleSignInInitial value) initial,
    required TResult Function(GoogleSignInLoading value) loading,
    required TResult Function(GoogleSignInSuccess value) success,
    required TResult Function(GoogleSignInIncompletePreference value)
        incompletePreference,
    required TResult Function(GoogleSignInFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleSignInInitial value)? initial,
    TResult? Function(GoogleSignInLoading value)? loading,
    TResult? Function(GoogleSignInSuccess value)? success,
    TResult? Function(GoogleSignInIncompletePreference value)?
        incompletePreference,
    TResult? Function(GoogleSignInFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleSignInInitial value)? initial,
    TResult Function(GoogleSignInLoading value)? loading,
    TResult Function(GoogleSignInSuccess value)? success,
    TResult Function(GoogleSignInIncompletePreference value)?
        incompletePreference,
    TResult Function(GoogleSignInFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class GoogleSignInFailure implements GoogleSignInState {
  const factory GoogleSignInFailure(final String error) =
      _$GoogleSignInFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$GoogleSignInFailureImplCopyWith<_$GoogleSignInFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
