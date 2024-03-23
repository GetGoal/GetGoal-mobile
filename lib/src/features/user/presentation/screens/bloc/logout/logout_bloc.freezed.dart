// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LogoutEventOnLogout value) onLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LogoutEventOnLogout value)? onLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LogoutEventOnLogout value)? onLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutEventCopyWith<$Res> {
  factory $LogoutEventCopyWith(
          LogoutEvent value, $Res Function(LogoutEvent) then) =
      _$LogoutEventCopyWithImpl<$Res, LogoutEvent>;
}

/// @nodoc
class _$LogoutEventCopyWithImpl<$Res, $Val extends LogoutEvent>
    implements $LogoutEventCopyWith<$Res> {
  _$LogoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LogoutEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LogoutEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLogout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onLogout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLogout,
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
    required TResult Function(_Started value) started,
    required TResult Function(LogoutEventOnLogout value) onLogout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LogoutEventOnLogout value)? onLogout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LogoutEventOnLogout value)? onLogout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LogoutEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LogoutEventOnLogoutImplCopyWith<$Res> {
  factory _$$LogoutEventOnLogoutImplCopyWith(_$LogoutEventOnLogoutImpl value,
          $Res Function(_$LogoutEventOnLogoutImpl) then) =
      __$$LogoutEventOnLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventOnLogoutImplCopyWithImpl<$Res>
    extends _$LogoutEventCopyWithImpl<$Res, _$LogoutEventOnLogoutImpl>
    implements _$$LogoutEventOnLogoutImplCopyWith<$Res> {
  __$$LogoutEventOnLogoutImplCopyWithImpl(_$LogoutEventOnLogoutImpl _value,
      $Res Function(_$LogoutEventOnLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutEventOnLogoutImpl implements LogoutEventOnLogout {
  const _$LogoutEventOnLogoutImpl();

  @override
  String toString() {
    return 'LogoutEvent.onLogout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutEventOnLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLogout,
  }) {
    return onLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onLogout,
  }) {
    return onLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLogout,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LogoutEventOnLogout value) onLogout,
  }) {
    return onLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LogoutEventOnLogout value)? onLogout,
  }) {
    return onLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LogoutEventOnLogout value)? onLogout,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout(this);
    }
    return orElse();
  }
}

abstract class LogoutEventOnLogout implements LogoutEvent {
  const factory LogoutEventOnLogout() = _$LogoutEventOnLogoutImpl;
}

/// @nodoc
mixin _$LogoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedOut,
    required TResult Function(String? message) loggedOutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedOut,
    TResult? Function(String? message)? loggedOutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedOut,
    TResult Function(String? message)? loggedOutError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogoutStateInitial value) initial,
    required TResult Function(LogoutStateLoading value) loading,
    required TResult Function(LogoutStateloaggedOut value) loggedOut,
    required TResult Function(LogoutStateLoggedOutError value) loggedOutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutStateInitial value)? initial,
    TResult? Function(LogoutStateLoading value)? loading,
    TResult? Function(LogoutStateloaggedOut value)? loggedOut,
    TResult? Function(LogoutStateLoggedOutError value)? loggedOutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutStateInitial value)? initial,
    TResult Function(LogoutStateLoading value)? loading,
    TResult Function(LogoutStateloaggedOut value)? loggedOut,
    TResult Function(LogoutStateLoggedOutError value)? loggedOutError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutStateCopyWith<$Res> {
  factory $LogoutStateCopyWith(
          LogoutState value, $Res Function(LogoutState) then) =
      _$LogoutStateCopyWithImpl<$Res, LogoutState>;
}

/// @nodoc
class _$LogoutStateCopyWithImpl<$Res, $Val extends LogoutState>
    implements $LogoutStateCopyWith<$Res> {
  _$LogoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogoutStateInitialImplCopyWith<$Res> {
  factory _$$LogoutStateInitialImplCopyWith(_$LogoutStateInitialImpl value,
          $Res Function(_$LogoutStateInitialImpl) then) =
      __$$LogoutStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutStateInitialImplCopyWithImpl<$Res>
    extends _$LogoutStateCopyWithImpl<$Res, _$LogoutStateInitialImpl>
    implements _$$LogoutStateInitialImplCopyWith<$Res> {
  __$$LogoutStateInitialImplCopyWithImpl(_$LogoutStateInitialImpl _value,
      $Res Function(_$LogoutStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutStateInitialImpl implements LogoutStateInitial {
  const _$LogoutStateInitialImpl();

  @override
  String toString() {
    return 'LogoutState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedOut,
    required TResult Function(String? message) loggedOutError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedOut,
    TResult? Function(String? message)? loggedOutError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedOut,
    TResult Function(String? message)? loggedOutError,
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
    required TResult Function(LogoutStateInitial value) initial,
    required TResult Function(LogoutStateLoading value) loading,
    required TResult Function(LogoutStateloaggedOut value) loggedOut,
    required TResult Function(LogoutStateLoggedOutError value) loggedOutError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutStateInitial value)? initial,
    TResult? Function(LogoutStateLoading value)? loading,
    TResult? Function(LogoutStateloaggedOut value)? loggedOut,
    TResult? Function(LogoutStateLoggedOutError value)? loggedOutError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutStateInitial value)? initial,
    TResult Function(LogoutStateLoading value)? loading,
    TResult Function(LogoutStateloaggedOut value)? loggedOut,
    TResult Function(LogoutStateLoggedOutError value)? loggedOutError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LogoutStateInitial implements LogoutState {
  const factory LogoutStateInitial() = _$LogoutStateInitialImpl;
}

/// @nodoc
abstract class _$$LogoutStateLoadingImplCopyWith<$Res> {
  factory _$$LogoutStateLoadingImplCopyWith(_$LogoutStateLoadingImpl value,
          $Res Function(_$LogoutStateLoadingImpl) then) =
      __$$LogoutStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutStateLoadingImplCopyWithImpl<$Res>
    extends _$LogoutStateCopyWithImpl<$Res, _$LogoutStateLoadingImpl>
    implements _$$LogoutStateLoadingImplCopyWith<$Res> {
  __$$LogoutStateLoadingImplCopyWithImpl(_$LogoutStateLoadingImpl _value,
      $Res Function(_$LogoutStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutStateLoadingImpl implements LogoutStateLoading {
  const _$LogoutStateLoadingImpl();

  @override
  String toString() {
    return 'LogoutState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedOut,
    required TResult Function(String? message) loggedOutError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedOut,
    TResult? Function(String? message)? loggedOutError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedOut,
    TResult Function(String? message)? loggedOutError,
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
    required TResult Function(LogoutStateInitial value) initial,
    required TResult Function(LogoutStateLoading value) loading,
    required TResult Function(LogoutStateloaggedOut value) loggedOut,
    required TResult Function(LogoutStateLoggedOutError value) loggedOutError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutStateInitial value)? initial,
    TResult? Function(LogoutStateLoading value)? loading,
    TResult? Function(LogoutStateloaggedOut value)? loggedOut,
    TResult? Function(LogoutStateLoggedOutError value)? loggedOutError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutStateInitial value)? initial,
    TResult Function(LogoutStateLoading value)? loading,
    TResult Function(LogoutStateloaggedOut value)? loggedOut,
    TResult Function(LogoutStateLoggedOutError value)? loggedOutError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LogoutStateLoading implements LogoutState {
  const factory LogoutStateLoading() = _$LogoutStateLoadingImpl;
}

/// @nodoc
abstract class _$$LogoutStateloaggedOutImplCopyWith<$Res> {
  factory _$$LogoutStateloaggedOutImplCopyWith(
          _$LogoutStateloaggedOutImpl value,
          $Res Function(_$LogoutStateloaggedOutImpl) then) =
      __$$LogoutStateloaggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutStateloaggedOutImplCopyWithImpl<$Res>
    extends _$LogoutStateCopyWithImpl<$Res, _$LogoutStateloaggedOutImpl>
    implements _$$LogoutStateloaggedOutImplCopyWith<$Res> {
  __$$LogoutStateloaggedOutImplCopyWithImpl(_$LogoutStateloaggedOutImpl _value,
      $Res Function(_$LogoutStateloaggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutStateloaggedOutImpl implements LogoutStateloaggedOut {
  const _$LogoutStateloaggedOutImpl();

  @override
  String toString() {
    return 'LogoutState.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutStateloaggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedOut,
    required TResult Function(String? message) loggedOutError,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedOut,
    TResult? Function(String? message)? loggedOutError,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedOut,
    TResult Function(String? message)? loggedOutError,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogoutStateInitial value) initial,
    required TResult Function(LogoutStateLoading value) loading,
    required TResult Function(LogoutStateloaggedOut value) loggedOut,
    required TResult Function(LogoutStateLoggedOutError value) loggedOutError,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutStateInitial value)? initial,
    TResult? Function(LogoutStateLoading value)? loading,
    TResult? Function(LogoutStateloaggedOut value)? loggedOut,
    TResult? Function(LogoutStateLoggedOutError value)? loggedOutError,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutStateInitial value)? initial,
    TResult Function(LogoutStateLoading value)? loading,
    TResult Function(LogoutStateloaggedOut value)? loggedOut,
    TResult Function(LogoutStateLoggedOutError value)? loggedOutError,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class LogoutStateloaggedOut implements LogoutState {
  const factory LogoutStateloaggedOut() = _$LogoutStateloaggedOutImpl;
}

/// @nodoc
abstract class _$$LogoutStateLoggedOutErrorImplCopyWith<$Res> {
  factory _$$LogoutStateLoggedOutErrorImplCopyWith(
          _$LogoutStateLoggedOutErrorImpl value,
          $Res Function(_$LogoutStateLoggedOutErrorImpl) then) =
      __$$LogoutStateLoggedOutErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$LogoutStateLoggedOutErrorImplCopyWithImpl<$Res>
    extends _$LogoutStateCopyWithImpl<$Res, _$LogoutStateLoggedOutErrorImpl>
    implements _$$LogoutStateLoggedOutErrorImplCopyWith<$Res> {
  __$$LogoutStateLoggedOutErrorImplCopyWithImpl(
      _$LogoutStateLoggedOutErrorImpl _value,
      $Res Function(_$LogoutStateLoggedOutErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$LogoutStateLoggedOutErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LogoutStateLoggedOutErrorImpl implements LogoutStateLoggedOutError {
  const _$LogoutStateLoggedOutErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'LogoutState.loggedOutError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutStateLoggedOutErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutStateLoggedOutErrorImplCopyWith<_$LogoutStateLoggedOutErrorImpl>
      get copyWith => __$$LogoutStateLoggedOutErrorImplCopyWithImpl<
          _$LogoutStateLoggedOutErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedOut,
    required TResult Function(String? message) loggedOutError,
  }) {
    return loggedOutError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedOut,
    TResult? Function(String? message)? loggedOutError,
  }) {
    return loggedOutError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedOut,
    TResult Function(String? message)? loggedOutError,
    required TResult orElse(),
  }) {
    if (loggedOutError != null) {
      return loggedOutError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogoutStateInitial value) initial,
    required TResult Function(LogoutStateLoading value) loading,
    required TResult Function(LogoutStateloaggedOut value) loggedOut,
    required TResult Function(LogoutStateLoggedOutError value) loggedOutError,
  }) {
    return loggedOutError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutStateInitial value)? initial,
    TResult? Function(LogoutStateLoading value)? loading,
    TResult? Function(LogoutStateloaggedOut value)? loggedOut,
    TResult? Function(LogoutStateLoggedOutError value)? loggedOutError,
  }) {
    return loggedOutError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutStateInitial value)? initial,
    TResult Function(LogoutStateLoading value)? loading,
    TResult Function(LogoutStateloaggedOut value)? loggedOut,
    TResult Function(LogoutStateLoggedOutError value)? loggedOutError,
    required TResult orElse(),
  }) {
    if (loggedOutError != null) {
      return loggedOutError(this);
    }
    return orElse();
  }
}

abstract class LogoutStateLoggedOutError implements LogoutState {
  const factory LogoutStateLoggedOutError({final String? message}) =
      _$LogoutStateLoggedOutErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$LogoutStateLoggedOutErrorImplCopyWith<_$LogoutStateLoggedOutErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
