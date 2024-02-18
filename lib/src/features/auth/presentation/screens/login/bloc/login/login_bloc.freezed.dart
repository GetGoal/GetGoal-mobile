// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) onLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? onLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? onLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventStarted value) started,
    required TResult Function(LoginEventOnLogin value) onLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventStarted value)? started,
    TResult? Function(LoginEventOnLogin value)? onLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventStarted value)? started,
    TResult Function(LoginEventOnLogin value)? onLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginEventStartedImplCopyWith<$Res> {
  factory _$$LoginEventStartedImplCopyWith(_$LoginEventStartedImpl value,
          $Res Function(_$LoginEventStartedImpl) then) =
      __$$LoginEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginEventStartedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventStartedImpl>
    implements _$$LoginEventStartedImplCopyWith<$Res> {
  __$$LoginEventStartedImplCopyWithImpl(_$LoginEventStartedImpl _value,
      $Res Function(_$LoginEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginEventStartedImpl implements LoginEventStarted {
  const _$LoginEventStartedImpl();

  @override
  String toString() {
    return 'LoginEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) onLogin,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? onLogin,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? onLogin,
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
    required TResult Function(LoginEventStarted value) started,
    required TResult Function(LoginEventOnLogin value) onLogin,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventStarted value)? started,
    TResult? Function(LoginEventOnLogin value)? onLogin,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventStarted value)? started,
    TResult Function(LoginEventOnLogin value)? onLogin,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class LoginEventStarted implements LoginEvent {
  const factory LoginEventStarted() = _$LoginEventStartedImpl;
}

/// @nodoc
abstract class _$$LoginEventOnLoginImplCopyWith<$Res> {
  factory _$$LoginEventOnLoginImplCopyWith(_$LoginEventOnLoginImpl value,
          $Res Function(_$LoginEventOnLoginImpl) then) =
      __$$LoginEventOnLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginEventOnLoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventOnLoginImpl>
    implements _$$LoginEventOnLoginImplCopyWith<$Res> {
  __$$LoginEventOnLoginImplCopyWithImpl(_$LoginEventOnLoginImpl _value,
      $Res Function(_$LoginEventOnLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginEventOnLoginImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventOnLoginImpl implements LoginEventOnLogin {
  const _$LoginEventOnLoginImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.onLogin(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventOnLoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventOnLoginImplCopyWith<_$LoginEventOnLoginImpl> get copyWith =>
      __$$LoginEventOnLoginImplCopyWithImpl<_$LoginEventOnLoginImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) onLogin,
  }) {
    return onLogin(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? onLogin,
  }) {
    return onLogin?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? onLogin,
    required TResult orElse(),
  }) {
    if (onLogin != null) {
      return onLogin(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventStarted value) started,
    required TResult Function(LoginEventOnLogin value) onLogin,
  }) {
    return onLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventStarted value)? started,
    TResult? Function(LoginEventOnLogin value)? onLogin,
  }) {
    return onLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventStarted value)? started,
    TResult Function(LoginEventOnLogin value)? onLogin,
    required TResult orElse(),
  }) {
    if (onLogin != null) {
      return onLogin(this);
    }
    return orElse();
  }
}

abstract class LoginEventOnLogin implements LoginEvent {
  const factory LoginEventOnLogin(
      {required final String email,
      required final String password}) = _$LoginEventOnLoginImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginEventOnLoginImplCopyWith<_$LoginEventOnLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(String? message) loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(String? message)? loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(String? message)? loginError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateLoginSuccess value) loginSuccess,
    required TResult Function(LoginStateLoginError value) loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInitial value)? initial,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateLoginSuccess value)? loginSuccess,
    TResult? Function(LoginStateLoginError value)? loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateLoginSuccess value)? loginSuccess,
    TResult Function(LoginStateLoginError value)? loginError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStateInitialImplCopyWith<$Res> {
  factory _$$LoginStateInitialImplCopyWith(_$LoginStateInitialImpl value,
          $Res Function(_$LoginStateInitialImpl) then) =
      __$$LoginStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateInitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateInitialImpl>
    implements _$$LoginStateInitialImplCopyWith<$Res> {
  __$$LoginStateInitialImplCopyWithImpl(_$LoginStateInitialImpl _value,
      $Res Function(_$LoginStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateInitialImpl implements LoginStateInitial {
  const _$LoginStateInitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(String? message) loginError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(String? message)? loginError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(String? message)? loginError,
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
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateLoginSuccess value) loginSuccess,
    required TResult Function(LoginStateLoginError value) loginError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInitial value)? initial,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateLoginSuccess value)? loginSuccess,
    TResult? Function(LoginStateLoginError value)? loginError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateLoginSuccess value)? loginSuccess,
    TResult Function(LoginStateLoginError value)? loginError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginStateInitial implements LoginState {
  const factory LoginStateInitial() = _$LoginStateInitialImpl;
}

/// @nodoc
abstract class _$$LoginStateLoadingImplCopyWith<$Res> {
  factory _$$LoginStateLoadingImplCopyWith(_$LoginStateLoadingImpl value,
          $Res Function(_$LoginStateLoadingImpl) then) =
      __$$LoginStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateLoadingImpl>
    implements _$$LoginStateLoadingImplCopyWith<$Res> {
  __$$LoginStateLoadingImplCopyWithImpl(_$LoginStateLoadingImpl _value,
      $Res Function(_$LoginStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateLoadingImpl implements LoginStateLoading {
  const _$LoginStateLoadingImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(String? message) loginError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(String? message)? loginError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(String? message)? loginError,
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
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateLoginSuccess value) loginSuccess,
    required TResult Function(LoginStateLoginError value) loginError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInitial value)? initial,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateLoginSuccess value)? loginSuccess,
    TResult? Function(LoginStateLoginError value)? loginError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateLoginSuccess value)? loginSuccess,
    TResult Function(LoginStateLoginError value)? loginError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginStateLoading implements LoginState {
  const factory LoginStateLoading() = _$LoginStateLoadingImpl;
}

/// @nodoc
abstract class _$$LoginStateLoginSuccessImplCopyWith<$Res> {
  factory _$$LoginStateLoginSuccessImplCopyWith(
          _$LoginStateLoginSuccessImpl value,
          $Res Function(_$LoginStateLoginSuccessImpl) then) =
      __$$LoginStateLoginSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateLoginSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateLoginSuccessImpl>
    implements _$$LoginStateLoginSuccessImplCopyWith<$Res> {
  __$$LoginStateLoginSuccessImplCopyWithImpl(
      _$LoginStateLoginSuccessImpl _value,
      $Res Function(_$LoginStateLoginSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateLoginSuccessImpl implements LoginStateLoginSuccess {
  const _$LoginStateLoginSuccessImpl();

  @override
  String toString() {
    return 'LoginState.loginSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateLoginSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(String? message) loginError,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(String? message)? loginError,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(String? message)? loginError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateLoginSuccess value) loginSuccess,
    required TResult Function(LoginStateLoginError value) loginError,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInitial value)? initial,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateLoginSuccess value)? loginSuccess,
    TResult? Function(LoginStateLoginError value)? loginError,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateLoginSuccess value)? loginSuccess,
    TResult Function(LoginStateLoginError value)? loginError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginStateLoginSuccess implements LoginState {
  const factory LoginStateLoginSuccess() = _$LoginStateLoginSuccessImpl;
}

/// @nodoc
abstract class _$$LoginStateLoginErrorImplCopyWith<$Res> {
  factory _$$LoginStateLoginErrorImplCopyWith(_$LoginStateLoginErrorImpl value,
          $Res Function(_$LoginStateLoginErrorImpl) then) =
      __$$LoginStateLoginErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$LoginStateLoginErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateLoginErrorImpl>
    implements _$$LoginStateLoginErrorImplCopyWith<$Res> {
  __$$LoginStateLoginErrorImplCopyWithImpl(_$LoginStateLoginErrorImpl _value,
      $Res Function(_$LoginStateLoginErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$LoginStateLoginErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginStateLoginErrorImpl implements LoginStateLoginError {
  const _$LoginStateLoginErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'LoginState.loginError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateLoginErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateLoginErrorImplCopyWith<_$LoginStateLoginErrorImpl>
      get copyWith =>
          __$$LoginStateLoginErrorImplCopyWithImpl<_$LoginStateLoginErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loginSuccess,
    required TResult Function(String? message) loginError,
  }) {
    return loginError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loginSuccess,
    TResult? Function(String? message)? loginError,
  }) {
    return loginError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loginSuccess,
    TResult Function(String? message)? loginError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateLoginSuccess value) loginSuccess,
    required TResult Function(LoginStateLoginError value) loginError,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInitial value)? initial,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateLoginSuccess value)? loginSuccess,
    TResult? Function(LoginStateLoginError value)? loginError,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateLoginSuccess value)? loginSuccess,
    TResult Function(LoginStateLoginError value)? loginError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class LoginStateLoginError implements LoginState {
  const factory LoginStateLoginError({final String? message}) =
      _$LoginStateLoginErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$LoginStateLoginErrorImplCopyWith<_$LoginStateLoginErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
