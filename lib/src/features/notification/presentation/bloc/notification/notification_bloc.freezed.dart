// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationEventStarted value) started,
    required TResult Function(NotificationEventRead value) read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationEventStarted value)? started,
    TResult? Function(NotificationEventRead value)? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationEventStarted value)? started,
    TResult Function(NotificationEventRead value)? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotificationEventStartedImplCopyWith<$Res> {
  factory _$$NotificationEventStartedImplCopyWith(
          _$NotificationEventStartedImpl value,
          $Res Function(_$NotificationEventStartedImpl) then) =
      __$$NotificationEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationEventStartedImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$NotificationEventStartedImpl>
    implements _$$NotificationEventStartedImplCopyWith<$Res> {
  __$$NotificationEventStartedImplCopyWithImpl(
      _$NotificationEventStartedImpl _value,
      $Res Function(_$NotificationEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotificationEventStartedImpl implements NotificationEventStarted {
  const _$NotificationEventStartedImpl();

  @override
  String toString() {
    return 'NotificationEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() read,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? read,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? read,
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
    required TResult Function(NotificationEventStarted value) started,
    required TResult Function(NotificationEventRead value) read,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationEventStarted value)? started,
    TResult? Function(NotificationEventRead value)? read,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationEventStarted value)? started,
    TResult Function(NotificationEventRead value)? read,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class NotificationEventStarted implements NotificationEvent {
  const factory NotificationEventStarted() = _$NotificationEventStartedImpl;
}

/// @nodoc
abstract class _$$NotificationEventReadImplCopyWith<$Res> {
  factory _$$NotificationEventReadImplCopyWith(
          _$NotificationEventReadImpl value,
          $Res Function(_$NotificationEventReadImpl) then) =
      __$$NotificationEventReadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationEventReadImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$NotificationEventReadImpl>
    implements _$$NotificationEventReadImplCopyWith<$Res> {
  __$$NotificationEventReadImplCopyWithImpl(_$NotificationEventReadImpl _value,
      $Res Function(_$NotificationEventReadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotificationEventReadImpl implements NotificationEventRead {
  const _$NotificationEventReadImpl();

  @override
  String toString() {
    return 'NotificationEvent.read()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationEventReadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() read,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? read,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationEventStarted value) started,
    required TResult Function(NotificationEventRead value) read,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationEventStarted value)? started,
    TResult? Function(NotificationEventRead value)? read,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationEventStarted value)? started,
    TResult Function(NotificationEventRead value)? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class NotificationEventRead implements NotificationEvent {
  const factory NotificationEventRead() = _$NotificationEventReadImpl;
}

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Notification notificaitonList) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Notification notificaitonList)? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notificaitonList)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationStateInitial value) initial,
    required TResult Function(NotificationStateLoading value) loading,
    required TResult Function(NotificationStateSuccess value) success,
    required TResult Function(NotificationStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationStateInitial value)? initial,
    TResult? Function(NotificationStateLoading value)? loading,
    TResult? Function(NotificationStateSuccess value)? success,
    TResult? Function(NotificationStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationStateInitial value)? initial,
    TResult Function(NotificationStateLoading value)? loading,
    TResult Function(NotificationStateSuccess value)? success,
    TResult Function(NotificationStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotificationStateInitialImplCopyWith<$Res> {
  factory _$$NotificationStateInitialImplCopyWith(
          _$NotificationStateInitialImpl value,
          $Res Function(_$NotificationStateInitialImpl) then) =
      __$$NotificationStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationStateInitialImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res,
        _$NotificationStateInitialImpl>
    implements _$$NotificationStateInitialImplCopyWith<$Res> {
  __$$NotificationStateInitialImplCopyWithImpl(
      _$NotificationStateInitialImpl _value,
      $Res Function(_$NotificationStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotificationStateInitialImpl implements NotificationStateInitial {
  const _$NotificationStateInitialImpl();

  @override
  String toString() {
    return 'NotificationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Notification notificaitonList) success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Notification notificaitonList)? success,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notificaitonList)? success,
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
    required TResult Function(NotificationStateInitial value) initial,
    required TResult Function(NotificationStateLoading value) loading,
    required TResult Function(NotificationStateSuccess value) success,
    required TResult Function(NotificationStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationStateInitial value)? initial,
    TResult? Function(NotificationStateLoading value)? loading,
    TResult? Function(NotificationStateSuccess value)? success,
    TResult? Function(NotificationStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationStateInitial value)? initial,
    TResult Function(NotificationStateLoading value)? loading,
    TResult Function(NotificationStateSuccess value)? success,
    TResult Function(NotificationStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NotificationStateInitial implements NotificationState {
  const factory NotificationStateInitial() = _$NotificationStateInitialImpl;
}

/// @nodoc
abstract class _$$NotificationStateLoadingImplCopyWith<$Res> {
  factory _$$NotificationStateLoadingImplCopyWith(
          _$NotificationStateLoadingImpl value,
          $Res Function(_$NotificationStateLoadingImpl) then) =
      __$$NotificationStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationStateLoadingImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res,
        _$NotificationStateLoadingImpl>
    implements _$$NotificationStateLoadingImplCopyWith<$Res> {
  __$$NotificationStateLoadingImplCopyWithImpl(
      _$NotificationStateLoadingImpl _value,
      $Res Function(_$NotificationStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotificationStateLoadingImpl implements NotificationStateLoading {
  const _$NotificationStateLoadingImpl();

  @override
  String toString() {
    return 'NotificationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Notification notificaitonList) success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Notification notificaitonList)? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notificaitonList)? success,
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
    required TResult Function(NotificationStateInitial value) initial,
    required TResult Function(NotificationStateLoading value) loading,
    required TResult Function(NotificationStateSuccess value) success,
    required TResult Function(NotificationStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationStateInitial value)? initial,
    TResult? Function(NotificationStateLoading value)? loading,
    TResult? Function(NotificationStateSuccess value)? success,
    TResult? Function(NotificationStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationStateInitial value)? initial,
    TResult Function(NotificationStateLoading value)? loading,
    TResult Function(NotificationStateSuccess value)? success,
    TResult Function(NotificationStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NotificationStateLoading implements NotificationState {
  const factory NotificationStateLoading() = _$NotificationStateLoadingImpl;
}

/// @nodoc
abstract class _$$NotificationStateSuccessImplCopyWith<$Res> {
  factory _$$NotificationStateSuccessImplCopyWith(
          _$NotificationStateSuccessImpl value,
          $Res Function(_$NotificationStateSuccessImpl) then) =
      __$$NotificationStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Notification notificaitonList});
}

/// @nodoc
class __$$NotificationStateSuccessImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res,
        _$NotificationStateSuccessImpl>
    implements _$$NotificationStateSuccessImplCopyWith<$Res> {
  __$$NotificationStateSuccessImplCopyWithImpl(
      _$NotificationStateSuccessImpl _value,
      $Res Function(_$NotificationStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificaitonList = null,
  }) {
    return _then(_$NotificationStateSuccessImpl(
      notificaitonList: null == notificaitonList
          ? _value.notificaitonList
          : notificaitonList // ignore: cast_nullable_to_non_nullable
              as Notification,
    ));
  }
}

/// @nodoc

class _$NotificationStateSuccessImpl implements NotificationStateSuccess {
  const _$NotificationStateSuccessImpl({required this.notificaitonList});

  @override
  final Notification notificaitonList;

  @override
  String toString() {
    return 'NotificationState.success(notificaitonList: $notificaitonList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateSuccessImpl &&
            (identical(other.notificaitonList, notificaitonList) ||
                other.notificaitonList == notificaitonList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificaitonList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateSuccessImplCopyWith<_$NotificationStateSuccessImpl>
      get copyWith => __$$NotificationStateSuccessImplCopyWithImpl<
          _$NotificationStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Notification notificaitonList) success,
    required TResult Function() failure,
  }) {
    return success(notificaitonList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Notification notificaitonList)? success,
    TResult? Function()? failure,
  }) {
    return success?.call(notificaitonList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notificaitonList)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(notificaitonList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationStateInitial value) initial,
    required TResult Function(NotificationStateLoading value) loading,
    required TResult Function(NotificationStateSuccess value) success,
    required TResult Function(NotificationStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationStateInitial value)? initial,
    TResult? Function(NotificationStateLoading value)? loading,
    TResult? Function(NotificationStateSuccess value)? success,
    TResult? Function(NotificationStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationStateInitial value)? initial,
    TResult Function(NotificationStateLoading value)? loading,
    TResult Function(NotificationStateSuccess value)? success,
    TResult Function(NotificationStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class NotificationStateSuccess implements NotificationState {
  const factory NotificationStateSuccess(
          {required final Notification notificaitonList}) =
      _$NotificationStateSuccessImpl;

  Notification get notificaitonList;
  @JsonKey(ignore: true)
  _$$NotificationStateSuccessImplCopyWith<_$NotificationStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationStateFailureImplCopyWith<$Res> {
  factory _$$NotificationStateFailureImplCopyWith(
          _$NotificationStateFailureImpl value,
          $Res Function(_$NotificationStateFailureImpl) then) =
      __$$NotificationStateFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationStateFailureImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res,
        _$NotificationStateFailureImpl>
    implements _$$NotificationStateFailureImplCopyWith<$Res> {
  __$$NotificationStateFailureImplCopyWithImpl(
      _$NotificationStateFailureImpl _value,
      $Res Function(_$NotificationStateFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotificationStateFailureImpl implements NotificationStateFailure {
  const _$NotificationStateFailureImpl();

  @override
  String toString() {
    return 'NotificationState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Notification notificaitonList) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Notification notificaitonList)? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notificaitonList)? success,
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
    required TResult Function(NotificationStateInitial value) initial,
    required TResult Function(NotificationStateLoading value) loading,
    required TResult Function(NotificationStateSuccess value) success,
    required TResult Function(NotificationStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationStateInitial value)? initial,
    TResult? Function(NotificationStateLoading value)? loading,
    TResult? Function(NotificationStateSuccess value)? success,
    TResult? Function(NotificationStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationStateInitial value)? initial,
    TResult Function(NotificationStateLoading value)? loading,
    TResult Function(NotificationStateSuccess value)? success,
    TResult Function(NotificationStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class NotificationStateFailure implements NotificationState {
  const factory NotificationStateFailure() = _$NotificationStateFailureImpl;
}
