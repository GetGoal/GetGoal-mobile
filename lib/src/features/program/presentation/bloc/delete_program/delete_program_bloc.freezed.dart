// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_program_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteProgramEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String programId) onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String programId)? onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String programId)? onDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteProgramEventStarted value) started,
    required TResult Function(DeleteProgramEventOnDelete value) onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteProgramEventStarted value)? started,
    TResult? Function(DeleteProgramEventOnDelete value)? onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteProgramEventStarted value)? started,
    TResult Function(DeleteProgramEventOnDelete value)? onDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteProgramEventCopyWith<$Res> {
  factory $DeleteProgramEventCopyWith(
          DeleteProgramEvent value, $Res Function(DeleteProgramEvent) then) =
      _$DeleteProgramEventCopyWithImpl<$Res, DeleteProgramEvent>;
}

/// @nodoc
class _$DeleteProgramEventCopyWithImpl<$Res, $Val extends DeleteProgramEvent>
    implements $DeleteProgramEventCopyWith<$Res> {
  _$DeleteProgramEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteProgramEventStartedImplCopyWith<$Res> {
  factory _$$DeleteProgramEventStartedImplCopyWith(
          _$DeleteProgramEventStartedImpl value,
          $Res Function(_$DeleteProgramEventStartedImpl) then) =
      __$$DeleteProgramEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteProgramEventStartedImplCopyWithImpl<$Res>
    extends _$DeleteProgramEventCopyWithImpl<$Res,
        _$DeleteProgramEventStartedImpl>
    implements _$$DeleteProgramEventStartedImplCopyWith<$Res> {
  __$$DeleteProgramEventStartedImplCopyWithImpl(
      _$DeleteProgramEventStartedImpl _value,
      $Res Function(_$DeleteProgramEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteProgramEventStartedImpl implements DeleteProgramEventStarted {
  const _$DeleteProgramEventStartedImpl();

  @override
  String toString() {
    return 'DeleteProgramEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProgramEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String programId) onDelete,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String programId)? onDelete,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String programId)? onDelete,
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
    required TResult Function(DeleteProgramEventStarted value) started,
    required TResult Function(DeleteProgramEventOnDelete value) onDelete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteProgramEventStarted value)? started,
    TResult? Function(DeleteProgramEventOnDelete value)? onDelete,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteProgramEventStarted value)? started,
    TResult Function(DeleteProgramEventOnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class DeleteProgramEventStarted implements DeleteProgramEvent {
  const factory DeleteProgramEventStarted() = _$DeleteProgramEventStartedImpl;
}

/// @nodoc
abstract class _$$DeleteProgramEventOnDeleteImplCopyWith<$Res> {
  factory _$$DeleteProgramEventOnDeleteImplCopyWith(
          _$DeleteProgramEventOnDeleteImpl value,
          $Res Function(_$DeleteProgramEventOnDeleteImpl) then) =
      __$$DeleteProgramEventOnDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String programId});
}

/// @nodoc
class __$$DeleteProgramEventOnDeleteImplCopyWithImpl<$Res>
    extends _$DeleteProgramEventCopyWithImpl<$Res,
        _$DeleteProgramEventOnDeleteImpl>
    implements _$$DeleteProgramEventOnDeleteImplCopyWith<$Res> {
  __$$DeleteProgramEventOnDeleteImplCopyWithImpl(
      _$DeleteProgramEventOnDeleteImpl _value,
      $Res Function(_$DeleteProgramEventOnDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
  }) {
    return _then(_$DeleteProgramEventOnDeleteImpl(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteProgramEventOnDeleteImpl implements DeleteProgramEventOnDelete {
  const _$DeleteProgramEventOnDeleteImpl({required this.programId});

  @override
  final String programId;

  @override
  String toString() {
    return 'DeleteProgramEvent.onDelete(programId: $programId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProgramEventOnDeleteImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, programId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProgramEventOnDeleteImplCopyWith<_$DeleteProgramEventOnDeleteImpl>
      get copyWith => __$$DeleteProgramEventOnDeleteImplCopyWithImpl<
          _$DeleteProgramEventOnDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String programId) onDelete,
  }) {
    return onDelete(programId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String programId)? onDelete,
  }) {
    return onDelete?.call(programId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String programId)? onDelete,
    required TResult orElse(),
  }) {
    if (onDelete != null) {
      return onDelete(programId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteProgramEventStarted value) started,
    required TResult Function(DeleteProgramEventOnDelete value) onDelete,
  }) {
    return onDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteProgramEventStarted value)? started,
    TResult? Function(DeleteProgramEventOnDelete value)? onDelete,
  }) {
    return onDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteProgramEventStarted value)? started,
    TResult Function(DeleteProgramEventOnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onDelete != null) {
      return onDelete(this);
    }
    return orElse();
  }
}

abstract class DeleteProgramEventOnDelete implements DeleteProgramEvent {
  const factory DeleteProgramEventOnDelete({required final String programId}) =
      _$DeleteProgramEventOnDeleteImpl;

  String get programId;
  @JsonKey(ignore: true)
  _$$DeleteProgramEventOnDeleteImplCopyWith<_$DeleteProgramEventOnDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteProgramState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function(String? message) deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? deleted,
    TResult? Function(String? message)? deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function(String? message)? deleteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteProgramStateInitial value) initial,
    required TResult Function(DeleteProgramStateLoading value) loading,
    required TResult Function(DeleteProgramStateDeleted value) deleted,
    required TResult Function(DeleteProgramStateDeleteError value) deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteProgramStateInitial value)? initial,
    TResult? Function(DeleteProgramStateLoading value)? loading,
    TResult? Function(DeleteProgramStateDeleted value)? deleted,
    TResult? Function(DeleteProgramStateDeleteError value)? deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteProgramStateInitial value)? initial,
    TResult Function(DeleteProgramStateLoading value)? loading,
    TResult Function(DeleteProgramStateDeleted value)? deleted,
    TResult Function(DeleteProgramStateDeleteError value)? deleteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteProgramStateCopyWith<$Res> {
  factory $DeleteProgramStateCopyWith(
          DeleteProgramState value, $Res Function(DeleteProgramState) then) =
      _$DeleteProgramStateCopyWithImpl<$Res, DeleteProgramState>;
}

/// @nodoc
class _$DeleteProgramStateCopyWithImpl<$Res, $Val extends DeleteProgramState>
    implements $DeleteProgramStateCopyWith<$Res> {
  _$DeleteProgramStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteProgramStateInitialImplCopyWith<$Res> {
  factory _$$DeleteProgramStateInitialImplCopyWith(
          _$DeleteProgramStateInitialImpl value,
          $Res Function(_$DeleteProgramStateInitialImpl) then) =
      __$$DeleteProgramStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteProgramStateInitialImplCopyWithImpl<$Res>
    extends _$DeleteProgramStateCopyWithImpl<$Res,
        _$DeleteProgramStateInitialImpl>
    implements _$$DeleteProgramStateInitialImplCopyWith<$Res> {
  __$$DeleteProgramStateInitialImplCopyWithImpl(
      _$DeleteProgramStateInitialImpl _value,
      $Res Function(_$DeleteProgramStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteProgramStateInitialImpl implements DeleteProgramStateInitial {
  const _$DeleteProgramStateInitialImpl();

  @override
  String toString() {
    return 'DeleteProgramState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProgramStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function(String? message) deleteError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? deleted,
    TResult? Function(String? message)? deleteError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function(String? message)? deleteError,
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
    required TResult Function(DeleteProgramStateInitial value) initial,
    required TResult Function(DeleteProgramStateLoading value) loading,
    required TResult Function(DeleteProgramStateDeleted value) deleted,
    required TResult Function(DeleteProgramStateDeleteError value) deleteError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteProgramStateInitial value)? initial,
    TResult? Function(DeleteProgramStateLoading value)? loading,
    TResult? Function(DeleteProgramStateDeleted value)? deleted,
    TResult? Function(DeleteProgramStateDeleteError value)? deleteError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteProgramStateInitial value)? initial,
    TResult Function(DeleteProgramStateLoading value)? loading,
    TResult Function(DeleteProgramStateDeleted value)? deleted,
    TResult Function(DeleteProgramStateDeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DeleteProgramStateInitial implements DeleteProgramState {
  const factory DeleteProgramStateInitial() = _$DeleteProgramStateInitialImpl;
}

/// @nodoc
abstract class _$$DeleteProgramStateLoadingImplCopyWith<$Res> {
  factory _$$DeleteProgramStateLoadingImplCopyWith(
          _$DeleteProgramStateLoadingImpl value,
          $Res Function(_$DeleteProgramStateLoadingImpl) then) =
      __$$DeleteProgramStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteProgramStateLoadingImplCopyWithImpl<$Res>
    extends _$DeleteProgramStateCopyWithImpl<$Res,
        _$DeleteProgramStateLoadingImpl>
    implements _$$DeleteProgramStateLoadingImplCopyWith<$Res> {
  __$$DeleteProgramStateLoadingImplCopyWithImpl(
      _$DeleteProgramStateLoadingImpl _value,
      $Res Function(_$DeleteProgramStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteProgramStateLoadingImpl implements DeleteProgramStateLoading {
  const _$DeleteProgramStateLoadingImpl();

  @override
  String toString() {
    return 'DeleteProgramState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProgramStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function(String? message) deleteError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? deleted,
    TResult? Function(String? message)? deleteError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function(String? message)? deleteError,
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
    required TResult Function(DeleteProgramStateInitial value) initial,
    required TResult Function(DeleteProgramStateLoading value) loading,
    required TResult Function(DeleteProgramStateDeleted value) deleted,
    required TResult Function(DeleteProgramStateDeleteError value) deleteError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteProgramStateInitial value)? initial,
    TResult? Function(DeleteProgramStateLoading value)? loading,
    TResult? Function(DeleteProgramStateDeleted value)? deleted,
    TResult? Function(DeleteProgramStateDeleteError value)? deleteError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteProgramStateInitial value)? initial,
    TResult Function(DeleteProgramStateLoading value)? loading,
    TResult Function(DeleteProgramStateDeleted value)? deleted,
    TResult Function(DeleteProgramStateDeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DeleteProgramStateLoading implements DeleteProgramState {
  const factory DeleteProgramStateLoading() = _$DeleteProgramStateLoadingImpl;
}

/// @nodoc
abstract class _$$DeleteProgramStateDeletedImplCopyWith<$Res> {
  factory _$$DeleteProgramStateDeletedImplCopyWith(
          _$DeleteProgramStateDeletedImpl value,
          $Res Function(_$DeleteProgramStateDeletedImpl) then) =
      __$$DeleteProgramStateDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteProgramStateDeletedImplCopyWithImpl<$Res>
    extends _$DeleteProgramStateCopyWithImpl<$Res,
        _$DeleteProgramStateDeletedImpl>
    implements _$$DeleteProgramStateDeletedImplCopyWith<$Res> {
  __$$DeleteProgramStateDeletedImplCopyWithImpl(
      _$DeleteProgramStateDeletedImpl _value,
      $Res Function(_$DeleteProgramStateDeletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteProgramStateDeletedImpl implements DeleteProgramStateDeleted {
  const _$DeleteProgramStateDeletedImpl();

  @override
  String toString() {
    return 'DeleteProgramState.deleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProgramStateDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function(String? message) deleteError,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? deleted,
    TResult? Function(String? message)? deleteError,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function(String? message)? deleteError,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteProgramStateInitial value) initial,
    required TResult Function(DeleteProgramStateLoading value) loading,
    required TResult Function(DeleteProgramStateDeleted value) deleted,
    required TResult Function(DeleteProgramStateDeleteError value) deleteError,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteProgramStateInitial value)? initial,
    TResult? Function(DeleteProgramStateLoading value)? loading,
    TResult? Function(DeleteProgramStateDeleted value)? deleted,
    TResult? Function(DeleteProgramStateDeleteError value)? deleteError,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteProgramStateInitial value)? initial,
    TResult Function(DeleteProgramStateLoading value)? loading,
    TResult Function(DeleteProgramStateDeleted value)? deleted,
    TResult Function(DeleteProgramStateDeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class DeleteProgramStateDeleted implements DeleteProgramState {
  const factory DeleteProgramStateDeleted() = _$DeleteProgramStateDeletedImpl;
}

/// @nodoc
abstract class _$$DeleteProgramStateDeleteErrorImplCopyWith<$Res> {
  factory _$$DeleteProgramStateDeleteErrorImplCopyWith(
          _$DeleteProgramStateDeleteErrorImpl value,
          $Res Function(_$DeleteProgramStateDeleteErrorImpl) then) =
      __$$DeleteProgramStateDeleteErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$DeleteProgramStateDeleteErrorImplCopyWithImpl<$Res>
    extends _$DeleteProgramStateCopyWithImpl<$Res,
        _$DeleteProgramStateDeleteErrorImpl>
    implements _$$DeleteProgramStateDeleteErrorImplCopyWith<$Res> {
  __$$DeleteProgramStateDeleteErrorImplCopyWithImpl(
      _$DeleteProgramStateDeleteErrorImpl _value,
      $Res Function(_$DeleteProgramStateDeleteErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$DeleteProgramStateDeleteErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteProgramStateDeleteErrorImpl
    implements DeleteProgramStateDeleteError {
  const _$DeleteProgramStateDeleteErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'DeleteProgramState.deleteError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProgramStateDeleteErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProgramStateDeleteErrorImplCopyWith<
          _$DeleteProgramStateDeleteErrorImpl>
      get copyWith => __$$DeleteProgramStateDeleteErrorImplCopyWithImpl<
          _$DeleteProgramStateDeleteErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() deleted,
    required TResult Function(String? message) deleteError,
  }) {
    return deleteError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? deleted,
    TResult? Function(String? message)? deleteError,
  }) {
    return deleteError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? deleted,
    TResult Function(String? message)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteProgramStateInitial value) initial,
    required TResult Function(DeleteProgramStateLoading value) loading,
    required TResult Function(DeleteProgramStateDeleted value) deleted,
    required TResult Function(DeleteProgramStateDeleteError value) deleteError,
  }) {
    return deleteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteProgramStateInitial value)? initial,
    TResult? Function(DeleteProgramStateLoading value)? loading,
    TResult? Function(DeleteProgramStateDeleted value)? deleted,
    TResult? Function(DeleteProgramStateDeleteError value)? deleteError,
  }) {
    return deleteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteProgramStateInitial value)? initial,
    TResult Function(DeleteProgramStateLoading value)? loading,
    TResult Function(DeleteProgramStateDeleted value)? deleted,
    TResult Function(DeleteProgramStateDeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(this);
    }
    return orElse();
  }
}

abstract class DeleteProgramStateDeleteError implements DeleteProgramState {
  const factory DeleteProgramStateDeleteError({final String? message}) =
      _$DeleteProgramStateDeleteErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$DeleteProgramStateDeleteErrorImplCopyWith<
          _$DeleteProgramStateDeleteErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
