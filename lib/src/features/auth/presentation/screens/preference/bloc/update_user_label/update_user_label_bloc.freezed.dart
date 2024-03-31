// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_label_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateUserLabelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<String> labels) onUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<String> labels)? onUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<String> labels)? onUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserLabelEventStarted value) started,
    required TResult Function(UpdateUserLabelEventOnUpdated value) onUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUserLabelEventStarted value)? started,
    TResult? Function(UpdateUserLabelEventOnUpdated value)? onUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserLabelEventStarted value)? started,
    TResult Function(UpdateUserLabelEventOnUpdated value)? onUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserLabelEventCopyWith<$Res> {
  factory $UpdateUserLabelEventCopyWith(UpdateUserLabelEvent value,
          $Res Function(UpdateUserLabelEvent) then) =
      _$UpdateUserLabelEventCopyWithImpl<$Res, UpdateUserLabelEvent>;
}

/// @nodoc
class _$UpdateUserLabelEventCopyWithImpl<$Res,
        $Val extends UpdateUserLabelEvent>
    implements $UpdateUserLabelEventCopyWith<$Res> {
  _$UpdateUserLabelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateUserLabelEventStartedImplCopyWith<$Res> {
  factory _$$UpdateUserLabelEventStartedImplCopyWith(
          _$UpdateUserLabelEventStartedImpl value,
          $Res Function(_$UpdateUserLabelEventStartedImpl) then) =
      __$$UpdateUserLabelEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserLabelEventStartedImplCopyWithImpl<$Res>
    extends _$UpdateUserLabelEventCopyWithImpl<$Res,
        _$UpdateUserLabelEventStartedImpl>
    implements _$$UpdateUserLabelEventStartedImplCopyWith<$Res> {
  __$$UpdateUserLabelEventStartedImplCopyWithImpl(
      _$UpdateUserLabelEventStartedImpl _value,
      $Res Function(_$UpdateUserLabelEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUserLabelEventStartedImpl implements UpdateUserLabelEventStarted {
  const _$UpdateUserLabelEventStartedImpl();

  @override
  String toString() {
    return 'UpdateUserLabelEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserLabelEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<String> labels) onUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<String> labels)? onUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<String> labels)? onUpdated,
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
    required TResult Function(UpdateUserLabelEventStarted value) started,
    required TResult Function(UpdateUserLabelEventOnUpdated value) onUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUserLabelEventStarted value)? started,
    TResult? Function(UpdateUserLabelEventOnUpdated value)? onUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserLabelEventStarted value)? started,
    TResult Function(UpdateUserLabelEventOnUpdated value)? onUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class UpdateUserLabelEventStarted implements UpdateUserLabelEvent {
  const factory UpdateUserLabelEventStarted() =
      _$UpdateUserLabelEventStartedImpl;
}

/// @nodoc
abstract class _$$UpdateUserLabelEventOnUpdatedImplCopyWith<$Res> {
  factory _$$UpdateUserLabelEventOnUpdatedImplCopyWith(
          _$UpdateUserLabelEventOnUpdatedImpl value,
          $Res Function(_$UpdateUserLabelEventOnUpdatedImpl) then) =
      __$$UpdateUserLabelEventOnUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> labels});
}

/// @nodoc
class __$$UpdateUserLabelEventOnUpdatedImplCopyWithImpl<$Res>
    extends _$UpdateUserLabelEventCopyWithImpl<$Res,
        _$UpdateUserLabelEventOnUpdatedImpl>
    implements _$$UpdateUserLabelEventOnUpdatedImplCopyWith<$Res> {
  __$$UpdateUserLabelEventOnUpdatedImplCopyWithImpl(
      _$UpdateUserLabelEventOnUpdatedImpl _value,
      $Res Function(_$UpdateUserLabelEventOnUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labels = null,
  }) {
    return _then(_$UpdateUserLabelEventOnUpdatedImpl(
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$UpdateUserLabelEventOnUpdatedImpl
    implements UpdateUserLabelEventOnUpdated {
  const _$UpdateUserLabelEventOnUpdatedImpl(
      {required final List<String> labels})
      : _labels = labels;

  final List<String> _labels;
  @override
  List<String> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  String toString() {
    return 'UpdateUserLabelEvent.onUpdated(labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserLabelEventOnUpdatedImpl &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserLabelEventOnUpdatedImplCopyWith<
          _$UpdateUserLabelEventOnUpdatedImpl>
      get copyWith => __$$UpdateUserLabelEventOnUpdatedImplCopyWithImpl<
          _$UpdateUserLabelEventOnUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<String> labels) onUpdated,
  }) {
    return onUpdated(labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<String> labels)? onUpdated,
  }) {
    return onUpdated?.call(labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<String> labels)? onUpdated,
    required TResult orElse(),
  }) {
    if (onUpdated != null) {
      return onUpdated(labels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserLabelEventStarted value) started,
    required TResult Function(UpdateUserLabelEventOnUpdated value) onUpdated,
  }) {
    return onUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUserLabelEventStarted value)? started,
    TResult? Function(UpdateUserLabelEventOnUpdated value)? onUpdated,
  }) {
    return onUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserLabelEventStarted value)? started,
    TResult Function(UpdateUserLabelEventOnUpdated value)? onUpdated,
    required TResult orElse(),
  }) {
    if (onUpdated != null) {
      return onUpdated(this);
    }
    return orElse();
  }
}

abstract class UpdateUserLabelEventOnUpdated implements UpdateUserLabelEvent {
  const factory UpdateUserLabelEventOnUpdated(
          {required final List<String> labels}) =
      _$UpdateUserLabelEventOnUpdatedImpl;

  List<String> get labels;
  @JsonKey(ignore: true)
  _$$UpdateUserLabelEventOnUpdatedImplCopyWith<
          _$UpdateUserLabelEventOnUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateUserLabelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserLabelStateInitial value) initial,
    required TResult Function(UpdateUserLabelStateLoading value) loading,
    required TResult Function(UpdateUserLabelStateUpdated value) updated,
    required TResult Function(UpdateUserLabelStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUserLabelStateInitial value)? initial,
    TResult? Function(UpdateUserLabelStateLoading value)? loading,
    TResult? Function(UpdateUserLabelStateUpdated value)? updated,
    TResult? Function(UpdateUserLabelStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserLabelStateInitial value)? initial,
    TResult Function(UpdateUserLabelStateLoading value)? loading,
    TResult Function(UpdateUserLabelStateUpdated value)? updated,
    TResult Function(UpdateUserLabelStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserLabelStateCopyWith<$Res> {
  factory $UpdateUserLabelStateCopyWith(UpdateUserLabelState value,
          $Res Function(UpdateUserLabelState) then) =
      _$UpdateUserLabelStateCopyWithImpl<$Res, UpdateUserLabelState>;
}

/// @nodoc
class _$UpdateUserLabelStateCopyWithImpl<$Res,
        $Val extends UpdateUserLabelState>
    implements $UpdateUserLabelStateCopyWith<$Res> {
  _$UpdateUserLabelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateUserLabelStateInitialImplCopyWith<$Res> {
  factory _$$UpdateUserLabelStateInitialImplCopyWith(
          _$UpdateUserLabelStateInitialImpl value,
          $Res Function(_$UpdateUserLabelStateInitialImpl) then) =
      __$$UpdateUserLabelStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserLabelStateInitialImplCopyWithImpl<$Res>
    extends _$UpdateUserLabelStateCopyWithImpl<$Res,
        _$UpdateUserLabelStateInitialImpl>
    implements _$$UpdateUserLabelStateInitialImplCopyWith<$Res> {
  __$$UpdateUserLabelStateInitialImplCopyWithImpl(
      _$UpdateUserLabelStateInitialImpl _value,
      $Res Function(_$UpdateUserLabelStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUserLabelStateInitialImpl implements UpdateUserLabelStateInitial {
  const _$UpdateUserLabelStateInitialImpl();

  @override
  String toString() {
    return 'UpdateUserLabelState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserLabelStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function(String? message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? updated,
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
    required TResult Function(UpdateUserLabelStateInitial value) initial,
    required TResult Function(UpdateUserLabelStateLoading value) loading,
    required TResult Function(UpdateUserLabelStateUpdated value) updated,
    required TResult Function(UpdateUserLabelStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUserLabelStateInitial value)? initial,
    TResult? Function(UpdateUserLabelStateLoading value)? loading,
    TResult? Function(UpdateUserLabelStateUpdated value)? updated,
    TResult? Function(UpdateUserLabelStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserLabelStateInitial value)? initial,
    TResult Function(UpdateUserLabelStateLoading value)? loading,
    TResult Function(UpdateUserLabelStateUpdated value)? updated,
    TResult Function(UpdateUserLabelStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UpdateUserLabelStateInitial implements UpdateUserLabelState {
  const factory UpdateUserLabelStateInitial() =
      _$UpdateUserLabelStateInitialImpl;
}

/// @nodoc
abstract class _$$UpdateUserLabelStateLoadingImplCopyWith<$Res> {
  factory _$$UpdateUserLabelStateLoadingImplCopyWith(
          _$UpdateUserLabelStateLoadingImpl value,
          $Res Function(_$UpdateUserLabelStateLoadingImpl) then) =
      __$$UpdateUserLabelStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserLabelStateLoadingImplCopyWithImpl<$Res>
    extends _$UpdateUserLabelStateCopyWithImpl<$Res,
        _$UpdateUserLabelStateLoadingImpl>
    implements _$$UpdateUserLabelStateLoadingImplCopyWith<$Res> {
  __$$UpdateUserLabelStateLoadingImplCopyWithImpl(
      _$UpdateUserLabelStateLoadingImpl _value,
      $Res Function(_$UpdateUserLabelStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUserLabelStateLoadingImpl implements UpdateUserLabelStateLoading {
  const _$UpdateUserLabelStateLoadingImpl();

  @override
  String toString() {
    return 'UpdateUserLabelState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserLabelStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function(String? message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function(String? message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? updated,
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
    required TResult Function(UpdateUserLabelStateInitial value) initial,
    required TResult Function(UpdateUserLabelStateLoading value) loading,
    required TResult Function(UpdateUserLabelStateUpdated value) updated,
    required TResult Function(UpdateUserLabelStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUserLabelStateInitial value)? initial,
    TResult? Function(UpdateUserLabelStateLoading value)? loading,
    TResult? Function(UpdateUserLabelStateUpdated value)? updated,
    TResult? Function(UpdateUserLabelStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserLabelStateInitial value)? initial,
    TResult Function(UpdateUserLabelStateLoading value)? loading,
    TResult Function(UpdateUserLabelStateUpdated value)? updated,
    TResult Function(UpdateUserLabelStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UpdateUserLabelStateLoading implements UpdateUserLabelState {
  const factory UpdateUserLabelStateLoading() =
      _$UpdateUserLabelStateLoadingImpl;
}

/// @nodoc
abstract class _$$UpdateUserLabelStateUpdatedImplCopyWith<$Res> {
  factory _$$UpdateUserLabelStateUpdatedImplCopyWith(
          _$UpdateUserLabelStateUpdatedImpl value,
          $Res Function(_$UpdateUserLabelStateUpdatedImpl) then) =
      __$$UpdateUserLabelStateUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserLabelStateUpdatedImplCopyWithImpl<$Res>
    extends _$UpdateUserLabelStateCopyWithImpl<$Res,
        _$UpdateUserLabelStateUpdatedImpl>
    implements _$$UpdateUserLabelStateUpdatedImplCopyWith<$Res> {
  __$$UpdateUserLabelStateUpdatedImplCopyWithImpl(
      _$UpdateUserLabelStateUpdatedImpl _value,
      $Res Function(_$UpdateUserLabelStateUpdatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUserLabelStateUpdatedImpl implements UpdateUserLabelStateUpdated {
  const _$UpdateUserLabelStateUpdatedImpl();

  @override
  String toString() {
    return 'UpdateUserLabelState.updated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserLabelStateUpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function(String? message) failure,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function(String? message)? failure,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserLabelStateInitial value) initial,
    required TResult Function(UpdateUserLabelStateLoading value) loading,
    required TResult Function(UpdateUserLabelStateUpdated value) updated,
    required TResult Function(UpdateUserLabelStateFailure value) failure,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUserLabelStateInitial value)? initial,
    TResult? Function(UpdateUserLabelStateLoading value)? loading,
    TResult? Function(UpdateUserLabelStateUpdated value)? updated,
    TResult? Function(UpdateUserLabelStateFailure value)? failure,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserLabelStateInitial value)? initial,
    TResult Function(UpdateUserLabelStateLoading value)? loading,
    TResult Function(UpdateUserLabelStateUpdated value)? updated,
    TResult Function(UpdateUserLabelStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class UpdateUserLabelStateUpdated implements UpdateUserLabelState {
  const factory UpdateUserLabelStateUpdated() =
      _$UpdateUserLabelStateUpdatedImpl;
}

/// @nodoc
abstract class _$$UpdateUserLabelStateFailureImplCopyWith<$Res> {
  factory _$$UpdateUserLabelStateFailureImplCopyWith(
          _$UpdateUserLabelStateFailureImpl value,
          $Res Function(_$UpdateUserLabelStateFailureImpl) then) =
      __$$UpdateUserLabelStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UpdateUserLabelStateFailureImplCopyWithImpl<$Res>
    extends _$UpdateUserLabelStateCopyWithImpl<$Res,
        _$UpdateUserLabelStateFailureImpl>
    implements _$$UpdateUserLabelStateFailureImplCopyWith<$Res> {
  __$$UpdateUserLabelStateFailureImplCopyWithImpl(
      _$UpdateUserLabelStateFailureImpl _value,
      $Res Function(_$UpdateUserLabelStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UpdateUserLabelStateFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateUserLabelStateFailureImpl implements UpdateUserLabelStateFailure {
  const _$UpdateUserLabelStateFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'UpdateUserLabelState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserLabelStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserLabelStateFailureImplCopyWith<_$UpdateUserLabelStateFailureImpl>
      get copyWith => __$$UpdateUserLabelStateFailureImplCopyWithImpl<
          _$UpdateUserLabelStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? updated,
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
    required TResult Function(UpdateUserLabelStateInitial value) initial,
    required TResult Function(UpdateUserLabelStateLoading value) loading,
    required TResult Function(UpdateUserLabelStateUpdated value) updated,
    required TResult Function(UpdateUserLabelStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUserLabelStateInitial value)? initial,
    TResult? Function(UpdateUserLabelStateLoading value)? loading,
    TResult? Function(UpdateUserLabelStateUpdated value)? updated,
    TResult? Function(UpdateUserLabelStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserLabelStateInitial value)? initial,
    TResult Function(UpdateUserLabelStateLoading value)? loading,
    TResult Function(UpdateUserLabelStateUpdated value)? updated,
    TResult Function(UpdateUserLabelStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class UpdateUserLabelStateFailure implements UpdateUserLabelState {
  const factory UpdateUserLabelStateFailure({final String? message}) =
      _$UpdateUserLabelStateFailureImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$UpdateUserLabelStateFailureImplCopyWith<_$UpdateUserLabelStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
