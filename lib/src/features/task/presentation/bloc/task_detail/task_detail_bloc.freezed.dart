// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskDetailEvent {
  String get taskId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskId) started,
    required TResult Function(String taskId) onTappedEdit,
    required TResult Function(String taskId) onTappedDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskId)? started,
    TResult? Function(String taskId)? onTappedEdit,
    TResult? Function(String taskId)? onTappedDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? started,
    TResult Function(String taskId)? onTappedEdit,
    TResult Function(String taskId)? onTappedDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailEventStarted value) started,
    required TResult Function(TaskDetailEventOnTappedEdit value) onTappedEdit,
    required TResult Function(TaskDetailEventOnTappedDelete value)
        onTappedDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailEventStarted value)? started,
    TResult? Function(TaskDetailEventOnTappedEdit value)? onTappedEdit,
    TResult? Function(TaskDetailEventOnTappedDelete value)? onTappedDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailEventStarted value)? started,
    TResult Function(TaskDetailEventOnTappedEdit value)? onTappedEdit,
    TResult Function(TaskDetailEventOnTappedDelete value)? onTappedDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskDetailEventCopyWith<TaskDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDetailEventCopyWith<$Res> {
  factory $TaskDetailEventCopyWith(
          TaskDetailEvent value, $Res Function(TaskDetailEvent) then) =
      _$TaskDetailEventCopyWithImpl<$Res, TaskDetailEvent>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class _$TaskDetailEventCopyWithImpl<$Res, $Val extends TaskDetailEvent>
    implements $TaskDetailEventCopyWith<$Res> {
  _$TaskDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskDetailEventStartedImplCopyWith<$Res>
    implements $TaskDetailEventCopyWith<$Res> {
  factory _$$TaskDetailEventStartedImplCopyWith(
          _$TaskDetailEventStartedImpl value,
          $Res Function(_$TaskDetailEventStartedImpl) then) =
      __$$TaskDetailEventStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$TaskDetailEventStartedImplCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res, _$TaskDetailEventStartedImpl>
    implements _$$TaskDetailEventStartedImplCopyWith<$Res> {
  __$$TaskDetailEventStartedImplCopyWithImpl(
      _$TaskDetailEventStartedImpl _value,
      $Res Function(_$TaskDetailEventStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$TaskDetailEventStartedImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskDetailEventStartedImpl implements TaskDetailEventStarted {
  const _$TaskDetailEventStartedImpl({required this.taskId});

  @override
  final String taskId;

  @override
  String toString() {
    return 'TaskDetailEvent.started(taskId: $taskId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailEventStartedImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailEventStartedImplCopyWith<_$TaskDetailEventStartedImpl>
      get copyWith => __$$TaskDetailEventStartedImplCopyWithImpl<
          _$TaskDetailEventStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskId) started,
    required TResult Function(String taskId) onTappedEdit,
    required TResult Function(String taskId) onTappedDelete,
  }) {
    return started(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskId)? started,
    TResult? Function(String taskId)? onTappedEdit,
    TResult? Function(String taskId)? onTappedDelete,
  }) {
    return started?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? started,
    TResult Function(String taskId)? onTappedEdit,
    TResult Function(String taskId)? onTappedDelete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailEventStarted value) started,
    required TResult Function(TaskDetailEventOnTappedEdit value) onTappedEdit,
    required TResult Function(TaskDetailEventOnTappedDelete value)
        onTappedDelete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailEventStarted value)? started,
    TResult? Function(TaskDetailEventOnTappedEdit value)? onTappedEdit,
    TResult? Function(TaskDetailEventOnTappedDelete value)? onTappedDelete,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailEventStarted value)? started,
    TResult Function(TaskDetailEventOnTappedEdit value)? onTappedEdit,
    TResult Function(TaskDetailEventOnTappedDelete value)? onTappedDelete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class TaskDetailEventStarted implements TaskDetailEvent {
  const factory TaskDetailEventStarted({required final String taskId}) =
      _$TaskDetailEventStartedImpl;

  @override
  String get taskId;
  @override
  @JsonKey(ignore: true)
  _$$TaskDetailEventStartedImplCopyWith<_$TaskDetailEventStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDetailEventOnTappedEditImplCopyWith<$Res>
    implements $TaskDetailEventCopyWith<$Res> {
  factory _$$TaskDetailEventOnTappedEditImplCopyWith(
          _$TaskDetailEventOnTappedEditImpl value,
          $Res Function(_$TaskDetailEventOnTappedEditImpl) then) =
      __$$TaskDetailEventOnTappedEditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$TaskDetailEventOnTappedEditImplCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res,
        _$TaskDetailEventOnTappedEditImpl>
    implements _$$TaskDetailEventOnTappedEditImplCopyWith<$Res> {
  __$$TaskDetailEventOnTappedEditImplCopyWithImpl(
      _$TaskDetailEventOnTappedEditImpl _value,
      $Res Function(_$TaskDetailEventOnTappedEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$TaskDetailEventOnTappedEditImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskDetailEventOnTappedEditImpl implements TaskDetailEventOnTappedEdit {
  const _$TaskDetailEventOnTappedEditImpl({required this.taskId});

  @override
  final String taskId;

  @override
  String toString() {
    return 'TaskDetailEvent.onTappedEdit(taskId: $taskId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailEventOnTappedEditImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailEventOnTappedEditImplCopyWith<_$TaskDetailEventOnTappedEditImpl>
      get copyWith => __$$TaskDetailEventOnTappedEditImplCopyWithImpl<
          _$TaskDetailEventOnTappedEditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskId) started,
    required TResult Function(String taskId) onTappedEdit,
    required TResult Function(String taskId) onTappedDelete,
  }) {
    return onTappedEdit(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskId)? started,
    TResult? Function(String taskId)? onTappedEdit,
    TResult? Function(String taskId)? onTappedDelete,
  }) {
    return onTappedEdit?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? started,
    TResult Function(String taskId)? onTappedEdit,
    TResult Function(String taskId)? onTappedDelete,
    required TResult orElse(),
  }) {
    if (onTappedEdit != null) {
      return onTappedEdit(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailEventStarted value) started,
    required TResult Function(TaskDetailEventOnTappedEdit value) onTappedEdit,
    required TResult Function(TaskDetailEventOnTappedDelete value)
        onTappedDelete,
  }) {
    return onTappedEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailEventStarted value)? started,
    TResult? Function(TaskDetailEventOnTappedEdit value)? onTappedEdit,
    TResult? Function(TaskDetailEventOnTappedDelete value)? onTappedDelete,
  }) {
    return onTappedEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailEventStarted value)? started,
    TResult Function(TaskDetailEventOnTappedEdit value)? onTappedEdit,
    TResult Function(TaskDetailEventOnTappedDelete value)? onTappedDelete,
    required TResult orElse(),
  }) {
    if (onTappedEdit != null) {
      return onTappedEdit(this);
    }
    return orElse();
  }
}

abstract class TaskDetailEventOnTappedEdit implements TaskDetailEvent {
  const factory TaskDetailEventOnTappedEdit({required final String taskId}) =
      _$TaskDetailEventOnTappedEditImpl;

  @override
  String get taskId;
  @override
  @JsonKey(ignore: true)
  _$$TaskDetailEventOnTappedEditImplCopyWith<_$TaskDetailEventOnTappedEditImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDetailEventOnTappedDeleteImplCopyWith<$Res>
    implements $TaskDetailEventCopyWith<$Res> {
  factory _$$TaskDetailEventOnTappedDeleteImplCopyWith(
          _$TaskDetailEventOnTappedDeleteImpl value,
          $Res Function(_$TaskDetailEventOnTappedDeleteImpl) then) =
      __$$TaskDetailEventOnTappedDeleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$TaskDetailEventOnTappedDeleteImplCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res,
        _$TaskDetailEventOnTappedDeleteImpl>
    implements _$$TaskDetailEventOnTappedDeleteImplCopyWith<$Res> {
  __$$TaskDetailEventOnTappedDeleteImplCopyWithImpl(
      _$TaskDetailEventOnTappedDeleteImpl _value,
      $Res Function(_$TaskDetailEventOnTappedDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$TaskDetailEventOnTappedDeleteImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskDetailEventOnTappedDeleteImpl
    implements TaskDetailEventOnTappedDelete {
  const _$TaskDetailEventOnTappedDeleteImpl({required this.taskId});

  @override
  final String taskId;

  @override
  String toString() {
    return 'TaskDetailEvent.onTappedDelete(taskId: $taskId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailEventOnTappedDeleteImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailEventOnTappedDeleteImplCopyWith<
          _$TaskDetailEventOnTappedDeleteImpl>
      get copyWith => __$$TaskDetailEventOnTappedDeleteImplCopyWithImpl<
          _$TaskDetailEventOnTappedDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskId) started,
    required TResult Function(String taskId) onTappedEdit,
    required TResult Function(String taskId) onTappedDelete,
  }) {
    return onTappedDelete(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskId)? started,
    TResult? Function(String taskId)? onTappedEdit,
    TResult? Function(String taskId)? onTappedDelete,
  }) {
    return onTappedDelete?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? started,
    TResult Function(String taskId)? onTappedEdit,
    TResult Function(String taskId)? onTappedDelete,
    required TResult orElse(),
  }) {
    if (onTappedDelete != null) {
      return onTappedDelete(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailEventStarted value) started,
    required TResult Function(TaskDetailEventOnTappedEdit value) onTappedEdit,
    required TResult Function(TaskDetailEventOnTappedDelete value)
        onTappedDelete,
  }) {
    return onTappedDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailEventStarted value)? started,
    TResult? Function(TaskDetailEventOnTappedEdit value)? onTappedEdit,
    TResult? Function(TaskDetailEventOnTappedDelete value)? onTappedDelete,
  }) {
    return onTappedDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailEventStarted value)? started,
    TResult Function(TaskDetailEventOnTappedEdit value)? onTappedEdit,
    TResult Function(TaskDetailEventOnTappedDelete value)? onTappedDelete,
    required TResult orElse(),
  }) {
    if (onTappedDelete != null) {
      return onTappedDelete(this);
    }
    return orElse();
  }
}

abstract class TaskDetailEventOnTappedDelete implements TaskDetailEvent {
  const factory TaskDetailEventOnTappedDelete({required final String taskId}) =
      _$TaskDetailEventOnTappedDeleteImpl;

  @override
  String get taskId;
  @override
  @JsonKey(ignore: true)
  _$$TaskDetailEventOnTappedDeleteImplCopyWith<
          _$TaskDetailEventOnTappedDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Task task) loadedSuccess,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Task task)? loadedSuccess,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Task task)? loadedSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailStateInitial value) initial,
    required TResult Function(TaskDetailStateLoading value) loading,
    required TResult Function(TaskDetailStateLoadedSuccess value) loadedSuccess,
    required TResult Function(TaskDetailStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TaskDetailStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TaskDetailStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDetailStateCopyWith<$Res> {
  factory $TaskDetailStateCopyWith(
          TaskDetailState value, $Res Function(TaskDetailState) then) =
      _$TaskDetailStateCopyWithImpl<$Res, TaskDetailState>;
}

/// @nodoc
class _$TaskDetailStateCopyWithImpl<$Res, $Val extends TaskDetailState>
    implements $TaskDetailStateCopyWith<$Res> {
  _$TaskDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TaskDetailStateInitialImplCopyWith<$Res> {
  factory _$$TaskDetailStateInitialImplCopyWith(
          _$TaskDetailStateInitialImpl value,
          $Res Function(_$TaskDetailStateInitialImpl) then) =
      __$$TaskDetailStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailStateInitialImplCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res, _$TaskDetailStateInitialImpl>
    implements _$$TaskDetailStateInitialImplCopyWith<$Res> {
  __$$TaskDetailStateInitialImplCopyWithImpl(
      _$TaskDetailStateInitialImpl _value,
      $Res Function(_$TaskDetailStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskDetailStateInitialImpl implements TaskDetailStateInitial {
  const _$TaskDetailStateInitialImpl();

  @override
  String toString() {
    return 'TaskDetailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Task task) loadedSuccess,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Task task)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Task task)? loadedSuccess,
    TResult Function()? error,
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
    required TResult Function(TaskDetailStateInitial value) initial,
    required TResult Function(TaskDetailStateLoading value) loading,
    required TResult Function(TaskDetailStateLoadedSuccess value) loadedSuccess,
    required TResult Function(TaskDetailStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TaskDetailStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TaskDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TaskDetailStateInitial implements TaskDetailState {
  const factory TaskDetailStateInitial() = _$TaskDetailStateInitialImpl;
}

/// @nodoc
abstract class _$$TaskDetailStateLoadingImplCopyWith<$Res> {
  factory _$$TaskDetailStateLoadingImplCopyWith(
          _$TaskDetailStateLoadingImpl value,
          $Res Function(_$TaskDetailStateLoadingImpl) then) =
      __$$TaskDetailStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailStateLoadingImplCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res, _$TaskDetailStateLoadingImpl>
    implements _$$TaskDetailStateLoadingImplCopyWith<$Res> {
  __$$TaskDetailStateLoadingImplCopyWithImpl(
      _$TaskDetailStateLoadingImpl _value,
      $Res Function(_$TaskDetailStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskDetailStateLoadingImpl implements TaskDetailStateLoading {
  const _$TaskDetailStateLoadingImpl();

  @override
  String toString() {
    return 'TaskDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Task task) loadedSuccess,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Task task)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Task task)? loadedSuccess,
    TResult Function()? error,
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
    required TResult Function(TaskDetailStateInitial value) initial,
    required TResult Function(TaskDetailStateLoading value) loading,
    required TResult Function(TaskDetailStateLoadedSuccess value) loadedSuccess,
    required TResult Function(TaskDetailStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TaskDetailStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TaskDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TaskDetailStateLoading implements TaskDetailState {
  const factory TaskDetailStateLoading() = _$TaskDetailStateLoadingImpl;
}

/// @nodoc
abstract class _$$TaskDetailStateLoadedSuccessImplCopyWith<$Res> {
  factory _$$TaskDetailStateLoadedSuccessImplCopyWith(
          _$TaskDetailStateLoadedSuccessImpl value,
          $Res Function(_$TaskDetailStateLoadedSuccessImpl) then) =
      __$$TaskDetailStateLoadedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskDetailStateLoadedSuccessImplCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res,
        _$TaskDetailStateLoadedSuccessImpl>
    implements _$$TaskDetailStateLoadedSuccessImplCopyWith<$Res> {
  __$$TaskDetailStateLoadedSuccessImplCopyWithImpl(
      _$TaskDetailStateLoadedSuccessImpl _value,
      $Res Function(_$TaskDetailStateLoadedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskDetailStateLoadedSuccessImpl(
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

class _$TaskDetailStateLoadedSuccessImpl
    implements TaskDetailStateLoadedSuccess {
  const _$TaskDetailStateLoadedSuccessImpl({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskDetailState.loadedSuccess(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailStateLoadedSuccessImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailStateLoadedSuccessImplCopyWith<
          _$TaskDetailStateLoadedSuccessImpl>
      get copyWith => __$$TaskDetailStateLoadedSuccessImplCopyWithImpl<
          _$TaskDetailStateLoadedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Task task) loadedSuccess,
    required TResult Function() error,
  }) {
    return loadedSuccess(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Task task)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return loadedSuccess?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Task task)? loadedSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailStateInitial value) initial,
    required TResult Function(TaskDetailStateLoading value) loading,
    required TResult Function(TaskDetailStateLoadedSuccess value) loadedSuccess,
    required TResult Function(TaskDetailStateError value) error,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TaskDetailStateError value)? error,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TaskDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class TaskDetailStateLoadedSuccess implements TaskDetailState {
  const factory TaskDetailStateLoadedSuccess({required final Task task}) =
      _$TaskDetailStateLoadedSuccessImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$TaskDetailStateLoadedSuccessImplCopyWith<
          _$TaskDetailStateLoadedSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDetailStateErrorImplCopyWith<$Res> {
  factory _$$TaskDetailStateErrorImplCopyWith(_$TaskDetailStateErrorImpl value,
          $Res Function(_$TaskDetailStateErrorImpl) then) =
      __$$TaskDetailStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailStateErrorImplCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res, _$TaskDetailStateErrorImpl>
    implements _$$TaskDetailStateErrorImplCopyWith<$Res> {
  __$$TaskDetailStateErrorImplCopyWithImpl(_$TaskDetailStateErrorImpl _value,
      $Res Function(_$TaskDetailStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskDetailStateErrorImpl implements TaskDetailStateError {
  const _$TaskDetailStateErrorImpl();

  @override
  String toString() {
    return 'TaskDetailState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Task task) loadedSuccess,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Task task)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Task task)? loadedSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailStateInitial value) initial,
    required TResult Function(TaskDetailStateLoading value) loading,
    required TResult Function(TaskDetailStateLoadedSuccess value) loadedSuccess,
    required TResult Function(TaskDetailStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TaskDetailStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TaskDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TaskDetailStateError implements TaskDetailState {
  const factory TaskDetailStateError() = _$TaskDetailStateErrorImpl;
}
