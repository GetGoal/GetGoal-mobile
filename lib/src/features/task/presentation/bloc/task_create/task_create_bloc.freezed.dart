// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Task task) onCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Task task)? onCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Task task)? onCreate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TaskCreateEventOnCreate value) onCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TaskCreateEventOnCreate value)? onCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TaskCreateEventOnCreate value)? onCreate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCreateEventCopyWith<$Res> {
  factory $TaskCreateEventCopyWith(
          TaskCreateEvent value, $Res Function(TaskCreateEvent) then) =
      _$TaskCreateEventCopyWithImpl<$Res, TaskCreateEvent>;
}

/// @nodoc
class _$TaskCreateEventCopyWithImpl<$Res, $Val extends TaskCreateEvent>
    implements $TaskCreateEventCopyWith<$Res> {
  _$TaskCreateEventCopyWithImpl(this._value, this._then);

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
    extends _$TaskCreateEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'TaskCreateEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Task task) onCreate,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Task task)? onCreate,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Task task)? onCreate,
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
    required TResult Function(TaskCreateEventOnCreate value) onCreate,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TaskCreateEventOnCreate value)? onCreate,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TaskCreateEventOnCreate value)? onCreate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TaskCreateEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$TaskCreateEventOnCreateImplCopyWith<$Res> {
  factory _$$TaskCreateEventOnCreateImplCopyWith(
          _$TaskCreateEventOnCreateImpl value,
          $Res Function(_$TaskCreateEventOnCreateImpl) then) =
      __$$TaskCreateEventOnCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskCreateEventOnCreateImplCopyWithImpl<$Res>
    extends _$TaskCreateEventCopyWithImpl<$Res, _$TaskCreateEventOnCreateImpl>
    implements _$$TaskCreateEventOnCreateImplCopyWith<$Res> {
  __$$TaskCreateEventOnCreateImplCopyWithImpl(
      _$TaskCreateEventOnCreateImpl _value,
      $Res Function(_$TaskCreateEventOnCreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskCreateEventOnCreateImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$TaskCreateEventOnCreateImpl implements TaskCreateEventOnCreate {
  const _$TaskCreateEventOnCreateImpl({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskCreateEvent.onCreate(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCreateEventOnCreateImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskCreateEventOnCreateImplCopyWith<_$TaskCreateEventOnCreateImpl>
      get copyWith => __$$TaskCreateEventOnCreateImplCopyWithImpl<
          _$TaskCreateEventOnCreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Task task) onCreate,
  }) {
    return onCreate(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Task task)? onCreate,
  }) {
    return onCreate?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Task task)? onCreate,
    required TResult orElse(),
  }) {
    if (onCreate != null) {
      return onCreate(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TaskCreateEventOnCreate value) onCreate,
  }) {
    return onCreate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TaskCreateEventOnCreate value)? onCreate,
  }) {
    return onCreate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TaskCreateEventOnCreate value)? onCreate,
    required TResult orElse(),
  }) {
    if (onCreate != null) {
      return onCreate(this);
    }
    return orElse();
  }
}

abstract class TaskCreateEventOnCreate implements TaskCreateEvent {
  const factory TaskCreateEventOnCreate({required final Task task}) =
      _$TaskCreateEventOnCreateImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$TaskCreateEventOnCreateImplCopyWith<_$TaskCreateEventOnCreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskCreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskCreateStateInitial value) initial,
    required TResult Function(TaskCreateStateLoading value) loading,
    required TResult Function(TaskCreateStateError value) error,
    required TResult Function(TaskCreateStateCreated value) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskCreateStateInitial value)? initial,
    TResult? Function(TaskCreateStateLoading value)? loading,
    TResult? Function(TaskCreateStateError value)? error,
    TResult? Function(TaskCreateStateCreated value)? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskCreateStateInitial value)? initial,
    TResult Function(TaskCreateStateLoading value)? loading,
    TResult Function(TaskCreateStateError value)? error,
    TResult Function(TaskCreateStateCreated value)? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCreateStateCopyWith<$Res> {
  factory $TaskCreateStateCopyWith(
          TaskCreateState value, $Res Function(TaskCreateState) then) =
      _$TaskCreateStateCopyWithImpl<$Res, TaskCreateState>;
}

/// @nodoc
class _$TaskCreateStateCopyWithImpl<$Res, $Val extends TaskCreateState>
    implements $TaskCreateStateCopyWith<$Res> {
  _$TaskCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TaskCreateStateInitialImplCopyWith<$Res> {
  factory _$$TaskCreateStateInitialImplCopyWith(
          _$TaskCreateStateInitialImpl value,
          $Res Function(_$TaskCreateStateInitialImpl) then) =
      __$$TaskCreateStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskCreateStateInitialImplCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res, _$TaskCreateStateInitialImpl>
    implements _$$TaskCreateStateInitialImplCopyWith<$Res> {
  __$$TaskCreateStateInitialImplCopyWithImpl(
      _$TaskCreateStateInitialImpl _value,
      $Res Function(_$TaskCreateStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskCreateStateInitialImpl implements TaskCreateStateInitial {
  const _$TaskCreateStateInitialImpl();

  @override
  String toString() {
    return 'TaskCreateState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCreateStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
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
    required TResult Function(TaskCreateStateInitial value) initial,
    required TResult Function(TaskCreateStateLoading value) loading,
    required TResult Function(TaskCreateStateError value) error,
    required TResult Function(TaskCreateStateCreated value) created,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskCreateStateInitial value)? initial,
    TResult? Function(TaskCreateStateLoading value)? loading,
    TResult? Function(TaskCreateStateError value)? error,
    TResult? Function(TaskCreateStateCreated value)? created,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskCreateStateInitial value)? initial,
    TResult Function(TaskCreateStateLoading value)? loading,
    TResult Function(TaskCreateStateError value)? error,
    TResult Function(TaskCreateStateCreated value)? created,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TaskCreateStateInitial implements TaskCreateState {
  const factory TaskCreateStateInitial() = _$TaskCreateStateInitialImpl;
}

/// @nodoc
abstract class _$$TaskCreateStateLoadingImplCopyWith<$Res> {
  factory _$$TaskCreateStateLoadingImplCopyWith(
          _$TaskCreateStateLoadingImpl value,
          $Res Function(_$TaskCreateStateLoadingImpl) then) =
      __$$TaskCreateStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskCreateStateLoadingImplCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res, _$TaskCreateStateLoadingImpl>
    implements _$$TaskCreateStateLoadingImplCopyWith<$Res> {
  __$$TaskCreateStateLoadingImplCopyWithImpl(
      _$TaskCreateStateLoadingImpl _value,
      $Res Function(_$TaskCreateStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskCreateStateLoadingImpl implements TaskCreateStateLoading {
  const _$TaskCreateStateLoadingImpl();

  @override
  String toString() {
    return 'TaskCreateState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCreateStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
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
    required TResult Function(TaskCreateStateInitial value) initial,
    required TResult Function(TaskCreateStateLoading value) loading,
    required TResult Function(TaskCreateStateError value) error,
    required TResult Function(TaskCreateStateCreated value) created,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskCreateStateInitial value)? initial,
    TResult? Function(TaskCreateStateLoading value)? loading,
    TResult? Function(TaskCreateStateError value)? error,
    TResult? Function(TaskCreateStateCreated value)? created,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskCreateStateInitial value)? initial,
    TResult Function(TaskCreateStateLoading value)? loading,
    TResult Function(TaskCreateStateError value)? error,
    TResult Function(TaskCreateStateCreated value)? created,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TaskCreateStateLoading implements TaskCreateState {
  const factory TaskCreateStateLoading() = _$TaskCreateStateLoadingImpl;
}

/// @nodoc
abstract class _$$TaskCreateStateErrorImplCopyWith<$Res> {
  factory _$$TaskCreateStateErrorImplCopyWith(_$TaskCreateStateErrorImpl value,
          $Res Function(_$TaskCreateStateErrorImpl) then) =
      __$$TaskCreateStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$TaskCreateStateErrorImplCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res, _$TaskCreateStateErrorImpl>
    implements _$$TaskCreateStateErrorImplCopyWith<$Res> {
  __$$TaskCreateStateErrorImplCopyWithImpl(_$TaskCreateStateErrorImpl _value,
      $Res Function(_$TaskCreateStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TaskCreateStateErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TaskCreateStateErrorImpl implements TaskCreateStateError {
  const _$TaskCreateStateErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'TaskCreateState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCreateStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskCreateStateErrorImplCopyWith<_$TaskCreateStateErrorImpl>
      get copyWith =>
          __$$TaskCreateStateErrorImplCopyWithImpl<_$TaskCreateStateErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskCreateStateInitial value) initial,
    required TResult Function(TaskCreateStateLoading value) loading,
    required TResult Function(TaskCreateStateError value) error,
    required TResult Function(TaskCreateStateCreated value) created,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskCreateStateInitial value)? initial,
    TResult? Function(TaskCreateStateLoading value)? loading,
    TResult? Function(TaskCreateStateError value)? error,
    TResult? Function(TaskCreateStateCreated value)? created,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskCreateStateInitial value)? initial,
    TResult Function(TaskCreateStateLoading value)? loading,
    TResult Function(TaskCreateStateError value)? error,
    TResult Function(TaskCreateStateCreated value)? created,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TaskCreateStateError implements TaskCreateState {
  const factory TaskCreateStateError({final String? message}) =
      _$TaskCreateStateErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$TaskCreateStateErrorImplCopyWith<_$TaskCreateStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskCreateStateCreatedImplCopyWith<$Res> {
  factory _$$TaskCreateStateCreatedImplCopyWith(
          _$TaskCreateStateCreatedImpl value,
          $Res Function(_$TaskCreateStateCreatedImpl) then) =
      __$$TaskCreateStateCreatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskCreateStateCreatedImplCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res, _$TaskCreateStateCreatedImpl>
    implements _$$TaskCreateStateCreatedImplCopyWith<$Res> {
  __$$TaskCreateStateCreatedImplCopyWithImpl(
      _$TaskCreateStateCreatedImpl _value,
      $Res Function(_$TaskCreateStateCreatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskCreateStateCreatedImpl implements TaskCreateStateCreated {
  const _$TaskCreateStateCreatedImpl();

  @override
  String toString() {
    return 'TaskCreateState.created()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCreateStateCreatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
  }) {
    return created?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
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
    required TResult Function(TaskCreateStateInitial value) initial,
    required TResult Function(TaskCreateStateLoading value) loading,
    required TResult Function(TaskCreateStateError value) error,
    required TResult Function(TaskCreateStateCreated value) created,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskCreateStateInitial value)? initial,
    TResult? Function(TaskCreateStateLoading value)? loading,
    TResult? Function(TaskCreateStateError value)? error,
    TResult? Function(TaskCreateStateCreated value)? created,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskCreateStateInitial value)? initial,
    TResult Function(TaskCreateStateLoading value)? loading,
    TResult Function(TaskCreateStateError value)? error,
    TResult Function(TaskCreateStateCreated value)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class TaskCreateStateCreated implements TaskCreateState {
  const factory TaskCreateStateCreated() = _$TaskCreateStateCreatedImpl;
}
