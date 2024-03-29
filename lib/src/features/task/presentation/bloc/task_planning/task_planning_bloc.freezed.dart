// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_planning_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskPlanningEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String programId) started,
    required TResult Function(List<Task> tasks, String programId) created,
    required TResult Function(List<Task> tasks) loadEditedTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String programId)? started,
    TResult? Function(List<Task> tasks, String programId)? created,
    TResult? Function(List<Task> tasks)? loadEditedTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String programId)? started,
    TResult Function(List<Task> tasks, String programId)? created,
    TResult Function(List<Task> tasks)? loadEditedTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(CreatedEvent value) created,
    required TResult Function(TaskPlanningEventLoadEditedTask value)
        loadEditedTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedEvent value)? started,
    TResult? Function(CreatedEvent value)? created,
    TResult? Function(TaskPlanningEventLoadEditedTask value)? loadEditedTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(CreatedEvent value)? created,
    TResult Function(TaskPlanningEventLoadEditedTask value)? loadEditedTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskPlanningEventCopyWith<$Res> {
  factory $TaskPlanningEventCopyWith(
          TaskPlanningEvent value, $Res Function(TaskPlanningEvent) then) =
      _$TaskPlanningEventCopyWithImpl<$Res, TaskPlanningEvent>;
}

/// @nodoc
class _$TaskPlanningEventCopyWithImpl<$Res, $Val extends TaskPlanningEvent>
    implements $TaskPlanningEventCopyWith<$Res> {
  _$TaskPlanningEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedEventImplCopyWith<$Res> {
  factory _$$StartedEventImplCopyWith(
          _$StartedEventImpl value, $Res Function(_$StartedEventImpl) then) =
      __$$StartedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String programId});
}

/// @nodoc
class __$$StartedEventImplCopyWithImpl<$Res>
    extends _$TaskPlanningEventCopyWithImpl<$Res, _$StartedEventImpl>
    implements _$$StartedEventImplCopyWith<$Res> {
  __$$StartedEventImplCopyWithImpl(
      _$StartedEventImpl _value, $Res Function(_$StartedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
  }) {
    return _then(_$StartedEventImpl(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedEventImpl implements StartedEvent {
  const _$StartedEventImpl({required this.programId});

  @override
  final String programId;

  @override
  String toString() {
    return 'TaskPlanningEvent.started(programId: $programId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedEventImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, programId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedEventImplCopyWith<_$StartedEventImpl> get copyWith =>
      __$$StartedEventImplCopyWithImpl<_$StartedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String programId) started,
    required TResult Function(List<Task> tasks, String programId) created,
    required TResult Function(List<Task> tasks) loadEditedTask,
  }) {
    return started(programId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String programId)? started,
    TResult? Function(List<Task> tasks, String programId)? created,
    TResult? Function(List<Task> tasks)? loadEditedTask,
  }) {
    return started?.call(programId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String programId)? started,
    TResult Function(List<Task> tasks, String programId)? created,
    TResult Function(List<Task> tasks)? loadEditedTask,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(programId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(CreatedEvent value) created,
    required TResult Function(TaskPlanningEventLoadEditedTask value)
        loadEditedTask,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedEvent value)? started,
    TResult? Function(CreatedEvent value)? created,
    TResult? Function(TaskPlanningEventLoadEditedTask value)? loadEditedTask,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(CreatedEvent value)? created,
    TResult Function(TaskPlanningEventLoadEditedTask value)? loadEditedTask,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class StartedEvent implements TaskPlanningEvent {
  const factory StartedEvent({required final String programId}) =
      _$StartedEventImpl;

  String get programId;
  @JsonKey(ignore: true)
  _$$StartedEventImplCopyWith<_$StartedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatedEventImplCopyWith<$Res> {
  factory _$$CreatedEventImplCopyWith(
          _$CreatedEventImpl value, $Res Function(_$CreatedEventImpl) then) =
      __$$CreatedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Task> tasks, String programId});
}

/// @nodoc
class __$$CreatedEventImplCopyWithImpl<$Res>
    extends _$TaskPlanningEventCopyWithImpl<$Res, _$CreatedEventImpl>
    implements _$$CreatedEventImplCopyWith<$Res> {
  __$$CreatedEventImplCopyWithImpl(
      _$CreatedEventImpl _value, $Res Function(_$CreatedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? programId = null,
  }) {
    return _then(_$CreatedEventImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreatedEventImpl implements CreatedEvent {
  const _$CreatedEventImpl(
      {required final List<Task> tasks, required this.programId})
      : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final String programId;

  @override
  String toString() {
    return 'TaskPlanningEvent.created(tasks: $tasks, programId: $programId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedEventImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.programId, programId) ||
                other.programId == programId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tasks), programId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedEventImplCopyWith<_$CreatedEventImpl> get copyWith =>
      __$$CreatedEventImplCopyWithImpl<_$CreatedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String programId) started,
    required TResult Function(List<Task> tasks, String programId) created,
    required TResult Function(List<Task> tasks) loadEditedTask,
  }) {
    return created(tasks, programId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String programId)? started,
    TResult? Function(List<Task> tasks, String programId)? created,
    TResult? Function(List<Task> tasks)? loadEditedTask,
  }) {
    return created?.call(tasks, programId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String programId)? started,
    TResult Function(List<Task> tasks, String programId)? created,
    TResult Function(List<Task> tasks)? loadEditedTask,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(tasks, programId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(CreatedEvent value) created,
    required TResult Function(TaskPlanningEventLoadEditedTask value)
        loadEditedTask,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedEvent value)? started,
    TResult? Function(CreatedEvent value)? created,
    TResult? Function(TaskPlanningEventLoadEditedTask value)? loadEditedTask,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(CreatedEvent value)? created,
    TResult Function(TaskPlanningEventLoadEditedTask value)? loadEditedTask,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class CreatedEvent implements TaskPlanningEvent {
  const factory CreatedEvent(
      {required final List<Task> tasks,
      required final String programId}) = _$CreatedEventImpl;

  List<Task> get tasks;
  String get programId;
  @JsonKey(ignore: true)
  _$$CreatedEventImplCopyWith<_$CreatedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskPlanningEventLoadEditedTaskImplCopyWith<$Res> {
  factory _$$TaskPlanningEventLoadEditedTaskImplCopyWith(
          _$TaskPlanningEventLoadEditedTaskImpl value,
          $Res Function(_$TaskPlanningEventLoadEditedTaskImpl) then) =
      __$$TaskPlanningEventLoadEditedTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Task> tasks});
}

/// @nodoc
class __$$TaskPlanningEventLoadEditedTaskImplCopyWithImpl<$Res>
    extends _$TaskPlanningEventCopyWithImpl<$Res,
        _$TaskPlanningEventLoadEditedTaskImpl>
    implements _$$TaskPlanningEventLoadEditedTaskImplCopyWith<$Res> {
  __$$TaskPlanningEventLoadEditedTaskImplCopyWithImpl(
      _$TaskPlanningEventLoadEditedTaskImpl _value,
      $Res Function(_$TaskPlanningEventLoadEditedTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TaskPlanningEventLoadEditedTaskImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$TaskPlanningEventLoadEditedTaskImpl
    implements TaskPlanningEventLoadEditedTask {
  const _$TaskPlanningEventLoadEditedTaskImpl({required final List<Task> tasks})
      : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskPlanningEvent.loadEditedTask(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPlanningEventLoadEditedTaskImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskPlanningEventLoadEditedTaskImplCopyWith<
          _$TaskPlanningEventLoadEditedTaskImpl>
      get copyWith => __$$TaskPlanningEventLoadEditedTaskImplCopyWithImpl<
          _$TaskPlanningEventLoadEditedTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String programId) started,
    required TResult Function(List<Task> tasks, String programId) created,
    required TResult Function(List<Task> tasks) loadEditedTask,
  }) {
    return loadEditedTask(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String programId)? started,
    TResult? Function(List<Task> tasks, String programId)? created,
    TResult? Function(List<Task> tasks)? loadEditedTask,
  }) {
    return loadEditedTask?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String programId)? started,
    TResult Function(List<Task> tasks, String programId)? created,
    TResult Function(List<Task> tasks)? loadEditedTask,
    required TResult orElse(),
  }) {
    if (loadEditedTask != null) {
      return loadEditedTask(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedEvent value) started,
    required TResult Function(CreatedEvent value) created,
    required TResult Function(TaskPlanningEventLoadEditedTask value)
        loadEditedTask,
  }) {
    return loadEditedTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedEvent value)? started,
    TResult? Function(CreatedEvent value)? created,
    TResult? Function(TaskPlanningEventLoadEditedTask value)? loadEditedTask,
  }) {
    return loadEditedTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedEvent value)? started,
    TResult Function(CreatedEvent value)? created,
    TResult Function(TaskPlanningEventLoadEditedTask value)? loadEditedTask,
    required TResult orElse(),
  }) {
    if (loadEditedTask != null) {
      return loadEditedTask(this);
    }
    return orElse();
  }
}

abstract class TaskPlanningEventLoadEditedTask implements TaskPlanningEvent {
  const factory TaskPlanningEventLoadEditedTask(
          {required final List<Task> tasks}) =
      _$TaskPlanningEventLoadEditedTaskImpl;

  List<Task> get tasks;
  @JsonKey(ignore: true)
  _$$TaskPlanningEventLoadEditedTaskImplCopyWith<
          _$TaskPlanningEventLoadEditedTaskImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskPlanningState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loadedSuccess,
    required TResult Function() empty,
    required TResult Function() error,
    required TResult Function() joinedProgram,
    required TResult Function() joinedProgramError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loadedSuccess,
    TResult? Function()? empty,
    TResult? Function()? error,
    TResult? Function()? joinedProgram,
    TResult? Function()? joinedProgramError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loadedSuccess,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function()? joinedProgram,
    TResult Function()? joinedProgramError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPlanningStateInitial value) initial,
    required TResult Function(TaskPlanningStateLoading value) loading,
    required TResult Function(TaskPlanningStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(TaskPlanningStateEmpty value) empty,
    required TResult Function(TaskPlanningStateError value) error,
    required TResult Function(TaskPlanningStateJoinedProgram value)
        joinedProgram,
    required TResult Function(TaskPlanningStateJoinedProgramError value)
        joinedProgramError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskPlanningStateInitial value)? initial,
    TResult? Function(TaskPlanningStateLoading value)? loading,
    TResult? Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TaskPlanningStateEmpty value)? empty,
    TResult? Function(TaskPlanningStateError value)? error,
    TResult? Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult? Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPlanningStateInitial value)? initial,
    TResult Function(TaskPlanningStateLoading value)? loading,
    TResult Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TaskPlanningStateEmpty value)? empty,
    TResult Function(TaskPlanningStateError value)? error,
    TResult Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskPlanningStateCopyWith<$Res> {
  factory $TaskPlanningStateCopyWith(
          TaskPlanningState value, $Res Function(TaskPlanningState) then) =
      _$TaskPlanningStateCopyWithImpl<$Res, TaskPlanningState>;
}

/// @nodoc
class _$TaskPlanningStateCopyWithImpl<$Res, $Val extends TaskPlanningState>
    implements $TaskPlanningStateCopyWith<$Res> {
  _$TaskPlanningStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TaskPlanningStateInitialImplCopyWith<$Res> {
  factory _$$TaskPlanningStateInitialImplCopyWith(
          _$TaskPlanningStateInitialImpl value,
          $Res Function(_$TaskPlanningStateInitialImpl) then) =
      __$$TaskPlanningStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskPlanningStateInitialImplCopyWithImpl<$Res>
    extends _$TaskPlanningStateCopyWithImpl<$Res,
        _$TaskPlanningStateInitialImpl>
    implements _$$TaskPlanningStateInitialImplCopyWith<$Res> {
  __$$TaskPlanningStateInitialImplCopyWithImpl(
      _$TaskPlanningStateInitialImpl _value,
      $Res Function(_$TaskPlanningStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskPlanningStateInitialImpl implements TaskPlanningStateInitial {
  const _$TaskPlanningStateInitialImpl();

  @override
  String toString() {
    return 'TaskPlanningState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPlanningStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loadedSuccess,
    required TResult Function() empty,
    required TResult Function() error,
    required TResult Function() joinedProgram,
    required TResult Function() joinedProgramError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loadedSuccess,
    TResult? Function()? empty,
    TResult? Function()? error,
    TResult? Function()? joinedProgram,
    TResult? Function()? joinedProgramError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loadedSuccess,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function()? joinedProgram,
    TResult Function()? joinedProgramError,
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
    required TResult Function(TaskPlanningStateInitial value) initial,
    required TResult Function(TaskPlanningStateLoading value) loading,
    required TResult Function(TaskPlanningStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(TaskPlanningStateEmpty value) empty,
    required TResult Function(TaskPlanningStateError value) error,
    required TResult Function(TaskPlanningStateJoinedProgram value)
        joinedProgram,
    required TResult Function(TaskPlanningStateJoinedProgramError value)
        joinedProgramError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskPlanningStateInitial value)? initial,
    TResult? Function(TaskPlanningStateLoading value)? loading,
    TResult? Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TaskPlanningStateEmpty value)? empty,
    TResult? Function(TaskPlanningStateError value)? error,
    TResult? Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult? Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPlanningStateInitial value)? initial,
    TResult Function(TaskPlanningStateLoading value)? loading,
    TResult Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TaskPlanningStateEmpty value)? empty,
    TResult Function(TaskPlanningStateError value)? error,
    TResult Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TaskPlanningStateInitial implements TaskPlanningState {
  const factory TaskPlanningStateInitial() = _$TaskPlanningStateInitialImpl;
}

/// @nodoc
abstract class _$$TaskPlanningStateLoadingImplCopyWith<$Res> {
  factory _$$TaskPlanningStateLoadingImplCopyWith(
          _$TaskPlanningStateLoadingImpl value,
          $Res Function(_$TaskPlanningStateLoadingImpl) then) =
      __$$TaskPlanningStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskPlanningStateLoadingImplCopyWithImpl<$Res>
    extends _$TaskPlanningStateCopyWithImpl<$Res,
        _$TaskPlanningStateLoadingImpl>
    implements _$$TaskPlanningStateLoadingImplCopyWith<$Res> {
  __$$TaskPlanningStateLoadingImplCopyWithImpl(
      _$TaskPlanningStateLoadingImpl _value,
      $Res Function(_$TaskPlanningStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskPlanningStateLoadingImpl implements TaskPlanningStateLoading {
  const _$TaskPlanningStateLoadingImpl();

  @override
  String toString() {
    return 'TaskPlanningState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPlanningStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loadedSuccess,
    required TResult Function() empty,
    required TResult Function() error,
    required TResult Function() joinedProgram,
    required TResult Function() joinedProgramError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loadedSuccess,
    TResult? Function()? empty,
    TResult? Function()? error,
    TResult? Function()? joinedProgram,
    TResult? Function()? joinedProgramError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loadedSuccess,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function()? joinedProgram,
    TResult Function()? joinedProgramError,
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
    required TResult Function(TaskPlanningStateInitial value) initial,
    required TResult Function(TaskPlanningStateLoading value) loading,
    required TResult Function(TaskPlanningStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(TaskPlanningStateEmpty value) empty,
    required TResult Function(TaskPlanningStateError value) error,
    required TResult Function(TaskPlanningStateJoinedProgram value)
        joinedProgram,
    required TResult Function(TaskPlanningStateJoinedProgramError value)
        joinedProgramError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskPlanningStateInitial value)? initial,
    TResult? Function(TaskPlanningStateLoading value)? loading,
    TResult? Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TaskPlanningStateEmpty value)? empty,
    TResult? Function(TaskPlanningStateError value)? error,
    TResult? Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult? Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPlanningStateInitial value)? initial,
    TResult Function(TaskPlanningStateLoading value)? loading,
    TResult Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TaskPlanningStateEmpty value)? empty,
    TResult Function(TaskPlanningStateError value)? error,
    TResult Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TaskPlanningStateLoading implements TaskPlanningState {
  const factory TaskPlanningStateLoading() = _$TaskPlanningStateLoadingImpl;
}

/// @nodoc
abstract class _$$TaskPlanningStateLoadedSuccessImplCopyWith<$Res> {
  factory _$$TaskPlanningStateLoadedSuccessImplCopyWith(
          _$TaskPlanningStateLoadedSuccessImpl value,
          $Res Function(_$TaskPlanningStateLoadedSuccessImpl) then) =
      __$$TaskPlanningStateLoadedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Task> tasks});
}

/// @nodoc
class __$$TaskPlanningStateLoadedSuccessImplCopyWithImpl<$Res>
    extends _$TaskPlanningStateCopyWithImpl<$Res,
        _$TaskPlanningStateLoadedSuccessImpl>
    implements _$$TaskPlanningStateLoadedSuccessImplCopyWith<$Res> {
  __$$TaskPlanningStateLoadedSuccessImplCopyWithImpl(
      _$TaskPlanningStateLoadedSuccessImpl _value,
      $Res Function(_$TaskPlanningStateLoadedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TaskPlanningStateLoadedSuccessImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$TaskPlanningStateLoadedSuccessImpl
    implements TaskPlanningStateLoadedSuccess {
  const _$TaskPlanningStateLoadedSuccessImpl({required final List<Task> tasks})
      : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskPlanningState.loadedSuccess(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPlanningStateLoadedSuccessImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskPlanningStateLoadedSuccessImplCopyWith<
          _$TaskPlanningStateLoadedSuccessImpl>
      get copyWith => __$$TaskPlanningStateLoadedSuccessImplCopyWithImpl<
          _$TaskPlanningStateLoadedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loadedSuccess,
    required TResult Function() empty,
    required TResult Function() error,
    required TResult Function() joinedProgram,
    required TResult Function() joinedProgramError,
  }) {
    return loadedSuccess(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loadedSuccess,
    TResult? Function()? empty,
    TResult? Function()? error,
    TResult? Function()? joinedProgram,
    TResult? Function()? joinedProgramError,
  }) {
    return loadedSuccess?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loadedSuccess,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function()? joinedProgram,
    TResult Function()? joinedProgramError,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPlanningStateInitial value) initial,
    required TResult Function(TaskPlanningStateLoading value) loading,
    required TResult Function(TaskPlanningStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(TaskPlanningStateEmpty value) empty,
    required TResult Function(TaskPlanningStateError value) error,
    required TResult Function(TaskPlanningStateJoinedProgram value)
        joinedProgram,
    required TResult Function(TaskPlanningStateJoinedProgramError value)
        joinedProgramError,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskPlanningStateInitial value)? initial,
    TResult? Function(TaskPlanningStateLoading value)? loading,
    TResult? Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TaskPlanningStateEmpty value)? empty,
    TResult? Function(TaskPlanningStateError value)? error,
    TResult? Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult? Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPlanningStateInitial value)? initial,
    TResult Function(TaskPlanningStateLoading value)? loading,
    TResult Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TaskPlanningStateEmpty value)? empty,
    TResult Function(TaskPlanningStateError value)? error,
    TResult Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class TaskPlanningStateLoadedSuccess implements TaskPlanningState {
  const factory TaskPlanningStateLoadedSuccess(
      {required final List<Task> tasks}) = _$TaskPlanningStateLoadedSuccessImpl;

  List<Task> get tasks;
  @JsonKey(ignore: true)
  _$$TaskPlanningStateLoadedSuccessImplCopyWith<
          _$TaskPlanningStateLoadedSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskPlanningStateEmptyImplCopyWith<$Res> {
  factory _$$TaskPlanningStateEmptyImplCopyWith(
          _$TaskPlanningStateEmptyImpl value,
          $Res Function(_$TaskPlanningStateEmptyImpl) then) =
      __$$TaskPlanningStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskPlanningStateEmptyImplCopyWithImpl<$Res>
    extends _$TaskPlanningStateCopyWithImpl<$Res, _$TaskPlanningStateEmptyImpl>
    implements _$$TaskPlanningStateEmptyImplCopyWith<$Res> {
  __$$TaskPlanningStateEmptyImplCopyWithImpl(
      _$TaskPlanningStateEmptyImpl _value,
      $Res Function(_$TaskPlanningStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskPlanningStateEmptyImpl implements TaskPlanningStateEmpty {
  const _$TaskPlanningStateEmptyImpl();

  @override
  String toString() {
    return 'TaskPlanningState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPlanningStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loadedSuccess,
    required TResult Function() empty,
    required TResult Function() error,
    required TResult Function() joinedProgram,
    required TResult Function() joinedProgramError,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loadedSuccess,
    TResult? Function()? empty,
    TResult? Function()? error,
    TResult? Function()? joinedProgram,
    TResult? Function()? joinedProgramError,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loadedSuccess,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function()? joinedProgram,
    TResult Function()? joinedProgramError,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPlanningStateInitial value) initial,
    required TResult Function(TaskPlanningStateLoading value) loading,
    required TResult Function(TaskPlanningStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(TaskPlanningStateEmpty value) empty,
    required TResult Function(TaskPlanningStateError value) error,
    required TResult Function(TaskPlanningStateJoinedProgram value)
        joinedProgram,
    required TResult Function(TaskPlanningStateJoinedProgramError value)
        joinedProgramError,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskPlanningStateInitial value)? initial,
    TResult? Function(TaskPlanningStateLoading value)? loading,
    TResult? Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TaskPlanningStateEmpty value)? empty,
    TResult? Function(TaskPlanningStateError value)? error,
    TResult? Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult? Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPlanningStateInitial value)? initial,
    TResult Function(TaskPlanningStateLoading value)? loading,
    TResult Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TaskPlanningStateEmpty value)? empty,
    TResult Function(TaskPlanningStateError value)? error,
    TResult Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class TaskPlanningStateEmpty implements TaskPlanningState {
  const factory TaskPlanningStateEmpty() = _$TaskPlanningStateEmptyImpl;
}

/// @nodoc
abstract class _$$TaskPlanningStateErrorImplCopyWith<$Res> {
  factory _$$TaskPlanningStateErrorImplCopyWith(
          _$TaskPlanningStateErrorImpl value,
          $Res Function(_$TaskPlanningStateErrorImpl) then) =
      __$$TaskPlanningStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskPlanningStateErrorImplCopyWithImpl<$Res>
    extends _$TaskPlanningStateCopyWithImpl<$Res, _$TaskPlanningStateErrorImpl>
    implements _$$TaskPlanningStateErrorImplCopyWith<$Res> {
  __$$TaskPlanningStateErrorImplCopyWithImpl(
      _$TaskPlanningStateErrorImpl _value,
      $Res Function(_$TaskPlanningStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskPlanningStateErrorImpl implements TaskPlanningStateError {
  const _$TaskPlanningStateErrorImpl();

  @override
  String toString() {
    return 'TaskPlanningState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPlanningStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loadedSuccess,
    required TResult Function() empty,
    required TResult Function() error,
    required TResult Function() joinedProgram,
    required TResult Function() joinedProgramError,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loadedSuccess,
    TResult? Function()? empty,
    TResult? Function()? error,
    TResult? Function()? joinedProgram,
    TResult? Function()? joinedProgramError,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loadedSuccess,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function()? joinedProgram,
    TResult Function()? joinedProgramError,
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
    required TResult Function(TaskPlanningStateInitial value) initial,
    required TResult Function(TaskPlanningStateLoading value) loading,
    required TResult Function(TaskPlanningStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(TaskPlanningStateEmpty value) empty,
    required TResult Function(TaskPlanningStateError value) error,
    required TResult Function(TaskPlanningStateJoinedProgram value)
        joinedProgram,
    required TResult Function(TaskPlanningStateJoinedProgramError value)
        joinedProgramError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskPlanningStateInitial value)? initial,
    TResult? Function(TaskPlanningStateLoading value)? loading,
    TResult? Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TaskPlanningStateEmpty value)? empty,
    TResult? Function(TaskPlanningStateError value)? error,
    TResult? Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult? Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPlanningStateInitial value)? initial,
    TResult Function(TaskPlanningStateLoading value)? loading,
    TResult Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TaskPlanningStateEmpty value)? empty,
    TResult Function(TaskPlanningStateError value)? error,
    TResult Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TaskPlanningStateError implements TaskPlanningState {
  const factory TaskPlanningStateError() = _$TaskPlanningStateErrorImpl;
}

/// @nodoc
abstract class _$$TaskPlanningStateJoinedProgramImplCopyWith<$Res> {
  factory _$$TaskPlanningStateJoinedProgramImplCopyWith(
          _$TaskPlanningStateJoinedProgramImpl value,
          $Res Function(_$TaskPlanningStateJoinedProgramImpl) then) =
      __$$TaskPlanningStateJoinedProgramImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskPlanningStateJoinedProgramImplCopyWithImpl<$Res>
    extends _$TaskPlanningStateCopyWithImpl<$Res,
        _$TaskPlanningStateJoinedProgramImpl>
    implements _$$TaskPlanningStateJoinedProgramImplCopyWith<$Res> {
  __$$TaskPlanningStateJoinedProgramImplCopyWithImpl(
      _$TaskPlanningStateJoinedProgramImpl _value,
      $Res Function(_$TaskPlanningStateJoinedProgramImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskPlanningStateJoinedProgramImpl
    implements TaskPlanningStateJoinedProgram {
  const _$TaskPlanningStateJoinedProgramImpl();

  @override
  String toString() {
    return 'TaskPlanningState.joinedProgram()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPlanningStateJoinedProgramImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loadedSuccess,
    required TResult Function() empty,
    required TResult Function() error,
    required TResult Function() joinedProgram,
    required TResult Function() joinedProgramError,
  }) {
    return joinedProgram();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loadedSuccess,
    TResult? Function()? empty,
    TResult? Function()? error,
    TResult? Function()? joinedProgram,
    TResult? Function()? joinedProgramError,
  }) {
    return joinedProgram?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loadedSuccess,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function()? joinedProgram,
    TResult Function()? joinedProgramError,
    required TResult orElse(),
  }) {
    if (joinedProgram != null) {
      return joinedProgram();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPlanningStateInitial value) initial,
    required TResult Function(TaskPlanningStateLoading value) loading,
    required TResult Function(TaskPlanningStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(TaskPlanningStateEmpty value) empty,
    required TResult Function(TaskPlanningStateError value) error,
    required TResult Function(TaskPlanningStateJoinedProgram value)
        joinedProgram,
    required TResult Function(TaskPlanningStateJoinedProgramError value)
        joinedProgramError,
  }) {
    return joinedProgram(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskPlanningStateInitial value)? initial,
    TResult? Function(TaskPlanningStateLoading value)? loading,
    TResult? Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TaskPlanningStateEmpty value)? empty,
    TResult? Function(TaskPlanningStateError value)? error,
    TResult? Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult? Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
  }) {
    return joinedProgram?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPlanningStateInitial value)? initial,
    TResult Function(TaskPlanningStateLoading value)? loading,
    TResult Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TaskPlanningStateEmpty value)? empty,
    TResult Function(TaskPlanningStateError value)? error,
    TResult Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
    required TResult orElse(),
  }) {
    if (joinedProgram != null) {
      return joinedProgram(this);
    }
    return orElse();
  }
}

abstract class TaskPlanningStateJoinedProgram implements TaskPlanningState {
  const factory TaskPlanningStateJoinedProgram() =
      _$TaskPlanningStateJoinedProgramImpl;
}

/// @nodoc
abstract class _$$TaskPlanningStateJoinedProgramErrorImplCopyWith<$Res> {
  factory _$$TaskPlanningStateJoinedProgramErrorImplCopyWith(
          _$TaskPlanningStateJoinedProgramErrorImpl value,
          $Res Function(_$TaskPlanningStateJoinedProgramErrorImpl) then) =
      __$$TaskPlanningStateJoinedProgramErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskPlanningStateJoinedProgramErrorImplCopyWithImpl<$Res>
    extends _$TaskPlanningStateCopyWithImpl<$Res,
        _$TaskPlanningStateJoinedProgramErrorImpl>
    implements _$$TaskPlanningStateJoinedProgramErrorImplCopyWith<$Res> {
  __$$TaskPlanningStateJoinedProgramErrorImplCopyWithImpl(
      _$TaskPlanningStateJoinedProgramErrorImpl _value,
      $Res Function(_$TaskPlanningStateJoinedProgramErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskPlanningStateJoinedProgramErrorImpl
    implements TaskPlanningStateJoinedProgramError {
  const _$TaskPlanningStateJoinedProgramErrorImpl();

  @override
  String toString() {
    return 'TaskPlanningState.joinedProgramError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPlanningStateJoinedProgramErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loadedSuccess,
    required TResult Function() empty,
    required TResult Function() error,
    required TResult Function() joinedProgram,
    required TResult Function() joinedProgramError,
  }) {
    return joinedProgramError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loadedSuccess,
    TResult? Function()? empty,
    TResult? Function()? error,
    TResult? Function()? joinedProgram,
    TResult? Function()? joinedProgramError,
  }) {
    return joinedProgramError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loadedSuccess,
    TResult Function()? empty,
    TResult Function()? error,
    TResult Function()? joinedProgram,
    TResult Function()? joinedProgramError,
    required TResult orElse(),
  }) {
    if (joinedProgramError != null) {
      return joinedProgramError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPlanningStateInitial value) initial,
    required TResult Function(TaskPlanningStateLoading value) loading,
    required TResult Function(TaskPlanningStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(TaskPlanningStateEmpty value) empty,
    required TResult Function(TaskPlanningStateError value) error,
    required TResult Function(TaskPlanningStateJoinedProgram value)
        joinedProgram,
    required TResult Function(TaskPlanningStateJoinedProgramError value)
        joinedProgramError,
  }) {
    return joinedProgramError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskPlanningStateInitial value)? initial,
    TResult? Function(TaskPlanningStateLoading value)? loading,
    TResult? Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TaskPlanningStateEmpty value)? empty,
    TResult? Function(TaskPlanningStateError value)? error,
    TResult? Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult? Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
  }) {
    return joinedProgramError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPlanningStateInitial value)? initial,
    TResult Function(TaskPlanningStateLoading value)? loading,
    TResult Function(TaskPlanningStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TaskPlanningStateEmpty value)? empty,
    TResult Function(TaskPlanningStateError value)? error,
    TResult Function(TaskPlanningStateJoinedProgram value)? joinedProgram,
    TResult Function(TaskPlanningStateJoinedProgramError value)?
        joinedProgramError,
    required TResult orElse(),
  }) {
    if (joinedProgramError != null) {
      return joinedProgramError(this);
    }
    return orElse();
  }
}

abstract class TaskPlanningStateJoinedProgramError
    implements TaskPlanningState {
  const factory TaskPlanningStateJoinedProgramError() =
      _$TaskPlanningStateJoinedProgramErrorImpl;
}
