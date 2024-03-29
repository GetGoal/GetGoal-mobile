// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateUser user) onCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateUser user)? onCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateUser user)? onCreate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateAccountEventStarted value) started,
    required TResult Function(CreateAccountEventOnCreate value) onCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAccountEventStarted value)? started,
    TResult? Function(CreateAccountEventOnCreate value)? onCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAccountEventStarted value)? started,
    TResult Function(CreateAccountEventOnCreate value)? onCreate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountEventCopyWith<$Res> {
  factory $CreateAccountEventCopyWith(
          CreateAccountEvent value, $Res Function(CreateAccountEvent) then) =
      _$CreateAccountEventCopyWithImpl<$Res, CreateAccountEvent>;
}

/// @nodoc
class _$CreateAccountEventCopyWithImpl<$Res, $Val extends CreateAccountEvent>
    implements $CreateAccountEventCopyWith<$Res> {
  _$CreateAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateAccountEventStartedImplCopyWith<$Res> {
  factory _$$CreateAccountEventStartedImplCopyWith(
          _$CreateAccountEventStartedImpl value,
          $Res Function(_$CreateAccountEventStartedImpl) then) =
      __$$CreateAccountEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateAccountEventStartedImplCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res,
        _$CreateAccountEventStartedImpl>
    implements _$$CreateAccountEventStartedImplCopyWith<$Res> {
  __$$CreateAccountEventStartedImplCopyWithImpl(
      _$CreateAccountEventStartedImpl _value,
      $Res Function(_$CreateAccountEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateAccountEventStartedImpl implements CreateAccountEventStarted {
  const _$CreateAccountEventStartedImpl();

  @override
  String toString() {
    return 'CreateAccountEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateUser user) onCreate,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateUser user)? onCreate,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateUser user)? onCreate,
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
    required TResult Function(CreateAccountEventStarted value) started,
    required TResult Function(CreateAccountEventOnCreate value) onCreate,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAccountEventStarted value)? started,
    TResult? Function(CreateAccountEventOnCreate value)? onCreate,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAccountEventStarted value)? started,
    TResult Function(CreateAccountEventOnCreate value)? onCreate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class CreateAccountEventStarted implements CreateAccountEvent {
  const factory CreateAccountEventStarted() = _$CreateAccountEventStartedImpl;
}

/// @nodoc
abstract class _$$CreateAccountEventOnCreateImplCopyWith<$Res> {
  factory _$$CreateAccountEventOnCreateImplCopyWith(
          _$CreateAccountEventOnCreateImpl value,
          $Res Function(_$CreateAccountEventOnCreateImpl) then) =
      __$$CreateAccountEventOnCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateUser user});

  $CreateUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$CreateAccountEventOnCreateImplCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res,
        _$CreateAccountEventOnCreateImpl>
    implements _$$CreateAccountEventOnCreateImplCopyWith<$Res> {
  __$$CreateAccountEventOnCreateImplCopyWithImpl(
      _$CreateAccountEventOnCreateImpl _value,
      $Res Function(_$CreateAccountEventOnCreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$CreateAccountEventOnCreateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CreateUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateUserCopyWith<$Res> get user {
    return $CreateUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$CreateAccountEventOnCreateImpl implements CreateAccountEventOnCreate {
  const _$CreateAccountEventOnCreateImpl({required this.user});

  @override
  final CreateUser user;

  @override
  String toString() {
    return 'CreateAccountEvent.onCreate(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountEventOnCreateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountEventOnCreateImplCopyWith<_$CreateAccountEventOnCreateImpl>
      get copyWith => __$$CreateAccountEventOnCreateImplCopyWithImpl<
          _$CreateAccountEventOnCreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateUser user) onCreate,
  }) {
    return onCreate(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateUser user)? onCreate,
  }) {
    return onCreate?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateUser user)? onCreate,
    required TResult orElse(),
  }) {
    if (onCreate != null) {
      return onCreate(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateAccountEventStarted value) started,
    required TResult Function(CreateAccountEventOnCreate value) onCreate,
  }) {
    return onCreate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAccountEventStarted value)? started,
    TResult? Function(CreateAccountEventOnCreate value)? onCreate,
  }) {
    return onCreate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAccountEventStarted value)? started,
    TResult Function(CreateAccountEventOnCreate value)? onCreate,
    required TResult orElse(),
  }) {
    if (onCreate != null) {
      return onCreate(this);
    }
    return orElse();
  }
}

abstract class CreateAccountEventOnCreate implements CreateAccountEvent {
  const factory CreateAccountEventOnCreate({required final CreateUser user}) =
      _$CreateAccountEventOnCreateImpl;

  CreateUser get user;
  @JsonKey(ignore: true)
  _$$CreateAccountEventOnCreateImplCopyWith<_$CreateAccountEventOnCreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(String? error) createError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(String? error)? createError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
    TResult Function(String? error)? createError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateAccountStateInitial value) initial,
    required TResult Function(CreateAccountStateLoading value) loading,
    required TResult Function(CreateAccountStateCreated value) created,
    required TResult Function(CreateAccountStateError value) createError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAccountStateInitial value)? initial,
    TResult? Function(CreateAccountStateLoading value)? loading,
    TResult? Function(CreateAccountStateCreated value)? created,
    TResult? Function(CreateAccountStateError value)? createError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAccountStateInitial value)? initial,
    TResult Function(CreateAccountStateLoading value)? loading,
    TResult Function(CreateAccountStateCreated value)? created,
    TResult Function(CreateAccountStateError value)? createError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountStateCopyWith<$Res> {
  factory $CreateAccountStateCopyWith(
          CreateAccountState value, $Res Function(CreateAccountState) then) =
      _$CreateAccountStateCopyWithImpl<$Res, CreateAccountState>;
}

/// @nodoc
class _$CreateAccountStateCopyWithImpl<$Res, $Val extends CreateAccountState>
    implements $CreateAccountStateCopyWith<$Res> {
  _$CreateAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateAccountStateInitialImplCopyWith<$Res> {
  factory _$$CreateAccountStateInitialImplCopyWith(
          _$CreateAccountStateInitialImpl value,
          $Res Function(_$CreateAccountStateInitialImpl) then) =
      __$$CreateAccountStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateAccountStateInitialImplCopyWithImpl<$Res>
    extends _$CreateAccountStateCopyWithImpl<$Res,
        _$CreateAccountStateInitialImpl>
    implements _$$CreateAccountStateInitialImplCopyWith<$Res> {
  __$$CreateAccountStateInitialImplCopyWithImpl(
      _$CreateAccountStateInitialImpl _value,
      $Res Function(_$CreateAccountStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateAccountStateInitialImpl implements CreateAccountStateInitial {
  const _$CreateAccountStateInitialImpl();

  @override
  String toString() {
    return 'CreateAccountState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(String? error) createError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(String? error)? createError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
    TResult Function(String? error)? createError,
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
    required TResult Function(CreateAccountStateInitial value) initial,
    required TResult Function(CreateAccountStateLoading value) loading,
    required TResult Function(CreateAccountStateCreated value) created,
    required TResult Function(CreateAccountStateError value) createError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAccountStateInitial value)? initial,
    TResult? Function(CreateAccountStateLoading value)? loading,
    TResult? Function(CreateAccountStateCreated value)? created,
    TResult? Function(CreateAccountStateError value)? createError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAccountStateInitial value)? initial,
    TResult Function(CreateAccountStateLoading value)? loading,
    TResult Function(CreateAccountStateCreated value)? created,
    TResult Function(CreateAccountStateError value)? createError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CreateAccountStateInitial implements CreateAccountState {
  const factory CreateAccountStateInitial() = _$CreateAccountStateInitialImpl;
}

/// @nodoc
abstract class _$$CreateAccountStateLoadingImplCopyWith<$Res> {
  factory _$$CreateAccountStateLoadingImplCopyWith(
          _$CreateAccountStateLoadingImpl value,
          $Res Function(_$CreateAccountStateLoadingImpl) then) =
      __$$CreateAccountStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateAccountStateLoadingImplCopyWithImpl<$Res>
    extends _$CreateAccountStateCopyWithImpl<$Res,
        _$CreateAccountStateLoadingImpl>
    implements _$$CreateAccountStateLoadingImplCopyWith<$Res> {
  __$$CreateAccountStateLoadingImplCopyWithImpl(
      _$CreateAccountStateLoadingImpl _value,
      $Res Function(_$CreateAccountStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateAccountStateLoadingImpl implements CreateAccountStateLoading {
  const _$CreateAccountStateLoadingImpl();

  @override
  String toString() {
    return 'CreateAccountState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(String? error) createError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(String? error)? createError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
    TResult Function(String? error)? createError,
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
    required TResult Function(CreateAccountStateInitial value) initial,
    required TResult Function(CreateAccountStateLoading value) loading,
    required TResult Function(CreateAccountStateCreated value) created,
    required TResult Function(CreateAccountStateError value) createError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAccountStateInitial value)? initial,
    TResult? Function(CreateAccountStateLoading value)? loading,
    TResult? Function(CreateAccountStateCreated value)? created,
    TResult? Function(CreateAccountStateError value)? createError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAccountStateInitial value)? initial,
    TResult Function(CreateAccountStateLoading value)? loading,
    TResult Function(CreateAccountStateCreated value)? created,
    TResult Function(CreateAccountStateError value)? createError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateAccountStateLoading implements CreateAccountState {
  const factory CreateAccountStateLoading() = _$CreateAccountStateLoadingImpl;
}

/// @nodoc
abstract class _$$CreateAccountStateCreatedImplCopyWith<$Res> {
  factory _$$CreateAccountStateCreatedImplCopyWith(
          _$CreateAccountStateCreatedImpl value,
          $Res Function(_$CreateAccountStateCreatedImpl) then) =
      __$$CreateAccountStateCreatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateAccountStateCreatedImplCopyWithImpl<$Res>
    extends _$CreateAccountStateCopyWithImpl<$Res,
        _$CreateAccountStateCreatedImpl>
    implements _$$CreateAccountStateCreatedImplCopyWith<$Res> {
  __$$CreateAccountStateCreatedImplCopyWithImpl(
      _$CreateAccountStateCreatedImpl _value,
      $Res Function(_$CreateAccountStateCreatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateAccountStateCreatedImpl implements CreateAccountStateCreated {
  const _$CreateAccountStateCreatedImpl();

  @override
  String toString() {
    return 'CreateAccountState.created()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountStateCreatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(String? error) createError,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(String? error)? createError,
  }) {
    return created?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
    TResult Function(String? error)? createError,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateAccountStateInitial value) initial,
    required TResult Function(CreateAccountStateLoading value) loading,
    required TResult Function(CreateAccountStateCreated value) created,
    required TResult Function(CreateAccountStateError value) createError,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAccountStateInitial value)? initial,
    TResult? Function(CreateAccountStateLoading value)? loading,
    TResult? Function(CreateAccountStateCreated value)? created,
    TResult? Function(CreateAccountStateError value)? createError,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAccountStateInitial value)? initial,
    TResult Function(CreateAccountStateLoading value)? loading,
    TResult Function(CreateAccountStateCreated value)? created,
    TResult Function(CreateAccountStateError value)? createError,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class CreateAccountStateCreated implements CreateAccountState {
  const factory CreateAccountStateCreated() = _$CreateAccountStateCreatedImpl;
}

/// @nodoc
abstract class _$$CreateAccountStateErrorImplCopyWith<$Res> {
  factory _$$CreateAccountStateErrorImplCopyWith(
          _$CreateAccountStateErrorImpl value,
          $Res Function(_$CreateAccountStateErrorImpl) then) =
      __$$CreateAccountStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$CreateAccountStateErrorImplCopyWithImpl<$Res>
    extends _$CreateAccountStateCopyWithImpl<$Res,
        _$CreateAccountStateErrorImpl>
    implements _$$CreateAccountStateErrorImplCopyWith<$Res> {
  __$$CreateAccountStateErrorImplCopyWithImpl(
      _$CreateAccountStateErrorImpl _value,
      $Res Function(_$CreateAccountStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$CreateAccountStateErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateAccountStateErrorImpl implements CreateAccountStateError {
  const _$CreateAccountStateErrorImpl({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'CreateAccountState.createError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountStateErrorImplCopyWith<_$CreateAccountStateErrorImpl>
      get copyWith => __$$CreateAccountStateErrorImplCopyWithImpl<
          _$CreateAccountStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(String? error) createError,
  }) {
    return createError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(String? error)? createError,
  }) {
    return createError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
    TResult Function(String? error)? createError,
    required TResult orElse(),
  }) {
    if (createError != null) {
      return createError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateAccountStateInitial value) initial,
    required TResult Function(CreateAccountStateLoading value) loading,
    required TResult Function(CreateAccountStateCreated value) created,
    required TResult Function(CreateAccountStateError value) createError,
  }) {
    return createError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateAccountStateInitial value)? initial,
    TResult? Function(CreateAccountStateLoading value)? loading,
    TResult? Function(CreateAccountStateCreated value)? created,
    TResult? Function(CreateAccountStateError value)? createError,
  }) {
    return createError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateAccountStateInitial value)? initial,
    TResult Function(CreateAccountStateLoading value)? loading,
    TResult Function(CreateAccountStateCreated value)? created,
    TResult Function(CreateAccountStateError value)? createError,
    required TResult orElse(),
  }) {
    if (createError != null) {
      return createError(this);
    }
    return orElse();
  }
}

abstract class CreateAccountStateError implements CreateAccountState {
  const factory CreateAccountStateError({final String? error}) =
      _$CreateAccountStateErrorImpl;

  String? get error;
  @JsonKey(ignore: true)
  _$$CreateAccountStateErrorImplCopyWith<_$CreateAccountStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
