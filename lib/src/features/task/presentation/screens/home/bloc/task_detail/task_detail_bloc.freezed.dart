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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() edit,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? edit,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? edit,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailEventStart value) started,
    required TResult Function(TaskDetailEventEdit value) edit,
    required TResult Function(TaskDetailEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailEventStart value)? started,
    TResult? Function(TaskDetailEventEdit value)? edit,
    TResult? Function(TaskDetailEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailEventStart value)? started,
    TResult Function(TaskDetailEventEdit value)? edit,
    TResult Function(TaskDetailEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDetailEventCopyWith<$Res> {
  factory $TaskDetailEventCopyWith(
          TaskDetailEvent value, $Res Function(TaskDetailEvent) then) =
      _$TaskDetailEventCopyWithImpl<$Res, TaskDetailEvent>;
}

/// @nodoc
class _$TaskDetailEventCopyWithImpl<$Res, $Val extends TaskDetailEvent>
    implements $TaskDetailEventCopyWith<$Res> {
  _$TaskDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TaskDetailEventStartImplCopyWith<$Res> {
  factory _$$TaskDetailEventStartImplCopyWith(_$TaskDetailEventStartImpl value,
          $Res Function(_$TaskDetailEventStartImpl) then) =
      __$$TaskDetailEventStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailEventStartImplCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res, _$TaskDetailEventStartImpl>
    implements _$$TaskDetailEventStartImplCopyWith<$Res> {
  __$$TaskDetailEventStartImplCopyWithImpl(_$TaskDetailEventStartImpl _value,
      $Res Function(_$TaskDetailEventStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskDetailEventStartImpl implements TaskDetailEventStart {
  const _$TaskDetailEventStartImpl();

  @override
  String toString() {
    return 'TaskDetailEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailEventStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() edit,
    required TResult Function() delete,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? edit,
    TResult? Function()? delete,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? edit,
    TResult Function()? delete,
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
    required TResult Function(TaskDetailEventStart value) started,
    required TResult Function(TaskDetailEventEdit value) edit,
    required TResult Function(TaskDetailEventDelete value) delete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailEventStart value)? started,
    TResult? Function(TaskDetailEventEdit value)? edit,
    TResult? Function(TaskDetailEventDelete value)? delete,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailEventStart value)? started,
    TResult Function(TaskDetailEventEdit value)? edit,
    TResult Function(TaskDetailEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class TaskDetailEventStart implements TaskDetailEvent {
  const factory TaskDetailEventStart() = _$TaskDetailEventStartImpl;
}

/// @nodoc
abstract class _$$TaskDetailEventEditImplCopyWith<$Res> {
  factory _$$TaskDetailEventEditImplCopyWith(_$TaskDetailEventEditImpl value,
          $Res Function(_$TaskDetailEventEditImpl) then) =
      __$$TaskDetailEventEditImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailEventEditImplCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res, _$TaskDetailEventEditImpl>
    implements _$$TaskDetailEventEditImplCopyWith<$Res> {
  __$$TaskDetailEventEditImplCopyWithImpl(_$TaskDetailEventEditImpl _value,
      $Res Function(_$TaskDetailEventEditImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskDetailEventEditImpl implements TaskDetailEventEdit {
  const _$TaskDetailEventEditImpl();

  @override
  String toString() {
    return 'TaskDetailEvent.edit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailEventEditImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() edit,
    required TResult Function() delete,
  }) {
    return edit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? edit,
    TResult? Function()? delete,
  }) {
    return edit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? edit,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailEventStart value) started,
    required TResult Function(TaskDetailEventEdit value) edit,
    required TResult Function(TaskDetailEventDelete value) delete,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailEventStart value)? started,
    TResult? Function(TaskDetailEventEdit value)? edit,
    TResult? Function(TaskDetailEventDelete value)? delete,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailEventStart value)? started,
    TResult Function(TaskDetailEventEdit value)? edit,
    TResult Function(TaskDetailEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class TaskDetailEventEdit implements TaskDetailEvent {
  const factory TaskDetailEventEdit() = _$TaskDetailEventEditImpl;
}

/// @nodoc
abstract class _$$TaskDetailEventDeleteImplCopyWith<$Res> {
  factory _$$TaskDetailEventDeleteImplCopyWith(
          _$TaskDetailEventDeleteImpl value,
          $Res Function(_$TaskDetailEventDeleteImpl) then) =
      __$$TaskDetailEventDeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailEventDeleteImplCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res, _$TaskDetailEventDeleteImpl>
    implements _$$TaskDetailEventDeleteImplCopyWith<$Res> {
  __$$TaskDetailEventDeleteImplCopyWithImpl(_$TaskDetailEventDeleteImpl _value,
      $Res Function(_$TaskDetailEventDeleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskDetailEventDeleteImpl implements TaskDetailEventDelete {
  const _$TaskDetailEventDeleteImpl();

  @override
  String toString() {
    return 'TaskDetailEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailEventDeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() edit,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? edit,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? edit,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailEventStart value) started,
    required TResult Function(TaskDetailEventEdit value) edit,
    required TResult Function(TaskDetailEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailEventStart value)? started,
    TResult? Function(TaskDetailEventEdit value)? edit,
    TResult? Function(TaskDetailEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailEventStart value)? started,
    TResult Function(TaskDetailEventEdit value)? edit,
    TResult Function(TaskDetailEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class TaskDetailEventDelete implements TaskDetailEvent {
  const factory TaskDetailEventDelete() = _$TaskDetailEventDeleteImpl;
}

/// @nodoc
mixin _$TaskDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadedSuccess,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadedSuccess,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadedSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailStateInitial value) initial,
    required TResult Function(TaskDetailStateLoading value) loading,
    required TResult Function(TaskDetailStateLoadedSucess value) loadedSuccess,
    required TResult Function(TaskDetailStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateLoadedSucess value)? loadedSuccess,
    TResult? Function(TaskDetailStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateLoadedSucess value)? loadedSuccess,
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
    required TResult Function() loadedSuccess,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadedSuccess,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadedSuccess,
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
    required TResult Function(TaskDetailStateLoadedSucess value) loadedSuccess,
    required TResult Function(TaskDetailStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateLoadedSucess value)? loadedSuccess,
    TResult? Function(TaskDetailStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateLoadedSucess value)? loadedSuccess,
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
    required TResult Function() loadedSuccess,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadedSuccess,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadedSuccess,
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
    required TResult Function(TaskDetailStateLoadedSucess value) loadedSuccess,
    required TResult Function(TaskDetailStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateLoadedSucess value)? loadedSuccess,
    TResult? Function(TaskDetailStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateLoadedSucess value)? loadedSuccess,
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
abstract class _$$TaskDetailStateLoadedSucessImplCopyWith<$Res> {
  factory _$$TaskDetailStateLoadedSucessImplCopyWith(
          _$TaskDetailStateLoadedSucessImpl value,
          $Res Function(_$TaskDetailStateLoadedSucessImpl) then) =
      __$$TaskDetailStateLoadedSucessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskDetailStateLoadedSucessImplCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res,
        _$TaskDetailStateLoadedSucessImpl>
    implements _$$TaskDetailStateLoadedSucessImplCopyWith<$Res> {
  __$$TaskDetailStateLoadedSucessImplCopyWithImpl(
      _$TaskDetailStateLoadedSucessImpl _value,
      $Res Function(_$TaskDetailStateLoadedSucessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskDetailStateLoadedSucessImpl implements TaskDetailStateLoadedSucess {
  const _$TaskDetailStateLoadedSucessImpl();

  @override
  String toString() {
    return 'TaskDetailState.loadedSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailStateLoadedSucessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadedSuccess,
    required TResult Function() error,
  }) {
    return loadedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadedSuccess,
    TResult? Function()? error,
  }) {
    return loadedSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadedSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDetailStateInitial value) initial,
    required TResult Function(TaskDetailStateLoading value) loading,
    required TResult Function(TaskDetailStateLoadedSucess value) loadedSuccess,
    required TResult Function(TaskDetailStateError value) error,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateLoadedSucess value)? loadedSuccess,
    TResult? Function(TaskDetailStateError value)? error,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateLoadedSucess value)? loadedSuccess,
    TResult Function(TaskDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class TaskDetailStateLoadedSucess implements TaskDetailState {
  const factory TaskDetailStateLoadedSucess() =
      _$TaskDetailStateLoadedSucessImpl;
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
    required TResult Function() loadedSuccess,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadedSuccess,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadedSuccess,
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
    required TResult Function(TaskDetailStateLoadedSucess value) loadedSuccess,
    required TResult Function(TaskDetailStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskDetailStateInitial value)? initial,
    TResult? Function(TaskDetailStateLoading value)? loading,
    TResult? Function(TaskDetailStateLoadedSucess value)? loadedSuccess,
    TResult? Function(TaskDetailStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDetailStateInitial value)? initial,
    TResult Function(TaskDetailStateLoading value)? loading,
    TResult Function(TaskDetailStateLoadedSucess value)? loadedSuccess,
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
