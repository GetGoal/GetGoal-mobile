// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateProgramEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProgramCreate programData) onCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProgramCreate programData)? onCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProgramCreate programData)? onCreate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateProgramEventStarted value) started,
    required TResult Function(CreateProgramEventOnCreated value) onCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateProgramEventStarted value)? started,
    TResult? Function(CreateProgramEventOnCreated value)? onCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateProgramEventStarted value)? started,
    TResult Function(CreateProgramEventOnCreated value)? onCreate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProgramEventCopyWith<$Res> {
  factory $CreateProgramEventCopyWith(
          CreateProgramEvent value, $Res Function(CreateProgramEvent) then) =
      _$CreateProgramEventCopyWithImpl<$Res, CreateProgramEvent>;
}

/// @nodoc
class _$CreateProgramEventCopyWithImpl<$Res, $Val extends CreateProgramEvent>
    implements $CreateProgramEventCopyWith<$Res> {
  _$CreateProgramEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateProgramEventStartedImplCopyWith<$Res> {
  factory _$$CreateProgramEventStartedImplCopyWith(
          _$CreateProgramEventStartedImpl value,
          $Res Function(_$CreateProgramEventStartedImpl) then) =
      __$$CreateProgramEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateProgramEventStartedImplCopyWithImpl<$Res>
    extends _$CreateProgramEventCopyWithImpl<$Res,
        _$CreateProgramEventStartedImpl>
    implements _$$CreateProgramEventStartedImplCopyWith<$Res> {
  __$$CreateProgramEventStartedImplCopyWithImpl(
      _$CreateProgramEventStartedImpl _value,
      $Res Function(_$CreateProgramEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateProgramEventStartedImpl implements CreateProgramEventStarted {
  const _$CreateProgramEventStartedImpl();

  @override
  String toString() {
    return 'CreateProgramEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProgramEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProgramCreate programData) onCreate,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProgramCreate programData)? onCreate,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProgramCreate programData)? onCreate,
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
    required TResult Function(CreateProgramEventStarted value) started,
    required TResult Function(CreateProgramEventOnCreated value) onCreate,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateProgramEventStarted value)? started,
    TResult? Function(CreateProgramEventOnCreated value)? onCreate,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateProgramEventStarted value)? started,
    TResult Function(CreateProgramEventOnCreated value)? onCreate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class CreateProgramEventStarted implements CreateProgramEvent {
  const factory CreateProgramEventStarted() = _$CreateProgramEventStartedImpl;
}

/// @nodoc
abstract class _$$CreateProgramEventOnCreatedImplCopyWith<$Res> {
  factory _$$CreateProgramEventOnCreatedImplCopyWith(
          _$CreateProgramEventOnCreatedImpl value,
          $Res Function(_$CreateProgramEventOnCreatedImpl) then) =
      __$$CreateProgramEventOnCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProgramCreate programData});

  $ProgramCreateCopyWith<$Res> get programData;
}

/// @nodoc
class __$$CreateProgramEventOnCreatedImplCopyWithImpl<$Res>
    extends _$CreateProgramEventCopyWithImpl<$Res,
        _$CreateProgramEventOnCreatedImpl>
    implements _$$CreateProgramEventOnCreatedImplCopyWith<$Res> {
  __$$CreateProgramEventOnCreatedImplCopyWithImpl(
      _$CreateProgramEventOnCreatedImpl _value,
      $Res Function(_$CreateProgramEventOnCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programData = null,
  }) {
    return _then(_$CreateProgramEventOnCreatedImpl(
      programData: null == programData
          ? _value.programData
          : programData // ignore: cast_nullable_to_non_nullable
              as ProgramCreate,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramCreateCopyWith<$Res> get programData {
    return $ProgramCreateCopyWith<$Res>(_value.programData, (value) {
      return _then(_value.copyWith(programData: value));
    });
  }
}

/// @nodoc

class _$CreateProgramEventOnCreatedImpl implements CreateProgramEventOnCreated {
  const _$CreateProgramEventOnCreatedImpl({required this.programData});

  @override
  final ProgramCreate programData;

  @override
  String toString() {
    return 'CreateProgramEvent.onCreate(programData: $programData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProgramEventOnCreatedImpl &&
            (identical(other.programData, programData) ||
                other.programData == programData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, programData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProgramEventOnCreatedImplCopyWith<_$CreateProgramEventOnCreatedImpl>
      get copyWith => __$$CreateProgramEventOnCreatedImplCopyWithImpl<
          _$CreateProgramEventOnCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProgramCreate programData) onCreate,
  }) {
    return onCreate(programData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProgramCreate programData)? onCreate,
  }) {
    return onCreate?.call(programData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProgramCreate programData)? onCreate,
    required TResult orElse(),
  }) {
    if (onCreate != null) {
      return onCreate(programData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateProgramEventStarted value) started,
    required TResult Function(CreateProgramEventOnCreated value) onCreate,
  }) {
    return onCreate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateProgramEventStarted value)? started,
    TResult? Function(CreateProgramEventOnCreated value)? onCreate,
  }) {
    return onCreate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateProgramEventStarted value)? started,
    TResult Function(CreateProgramEventOnCreated value)? onCreate,
    required TResult orElse(),
  }) {
    if (onCreate != null) {
      return onCreate(this);
    }
    return orElse();
  }
}

abstract class CreateProgramEventOnCreated implements CreateProgramEvent {
  const factory CreateProgramEventOnCreated(
          {required final ProgramCreate programData}) =
      _$CreateProgramEventOnCreatedImpl;

  ProgramCreate get programData;
  @JsonKey(ignore: true)
  _$$CreateProgramEventOnCreatedImplCopyWith<_$CreateProgramEventOnCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateProgramState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(String? message) createdError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(String? message)? createdError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
    TResult Function(String? message)? createdError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateProgramStateInitial value) initial,
    required TResult Function(CreateProgramStateLoading value) loading,
    required TResult Function(CreateProgramStateCreated value) created,
    required TResult Function(CreateProgramStateCreatedError value)
        createdError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateProgramStateInitial value)? initial,
    TResult? Function(CreateProgramStateLoading value)? loading,
    TResult? Function(CreateProgramStateCreated value)? created,
    TResult? Function(CreateProgramStateCreatedError value)? createdError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateProgramStateInitial value)? initial,
    TResult Function(CreateProgramStateLoading value)? loading,
    TResult Function(CreateProgramStateCreated value)? created,
    TResult Function(CreateProgramStateCreatedError value)? createdError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProgramStateCopyWith<$Res> {
  factory $CreateProgramStateCopyWith(
          CreateProgramState value, $Res Function(CreateProgramState) then) =
      _$CreateProgramStateCopyWithImpl<$Res, CreateProgramState>;
}

/// @nodoc
class _$CreateProgramStateCopyWithImpl<$Res, $Val extends CreateProgramState>
    implements $CreateProgramStateCopyWith<$Res> {
  _$CreateProgramStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateProgramStateInitialImplCopyWith<$Res> {
  factory _$$CreateProgramStateInitialImplCopyWith(
          _$CreateProgramStateInitialImpl value,
          $Res Function(_$CreateProgramStateInitialImpl) then) =
      __$$CreateProgramStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateProgramStateInitialImplCopyWithImpl<$Res>
    extends _$CreateProgramStateCopyWithImpl<$Res,
        _$CreateProgramStateInitialImpl>
    implements _$$CreateProgramStateInitialImplCopyWith<$Res> {
  __$$CreateProgramStateInitialImplCopyWithImpl(
      _$CreateProgramStateInitialImpl _value,
      $Res Function(_$CreateProgramStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateProgramStateInitialImpl implements CreateProgramStateInitial {
  const _$CreateProgramStateInitialImpl();

  @override
  String toString() {
    return 'CreateProgramState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProgramStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(String? message) createdError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(String? message)? createdError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
    TResult Function(String? message)? createdError,
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
    required TResult Function(CreateProgramStateInitial value) initial,
    required TResult Function(CreateProgramStateLoading value) loading,
    required TResult Function(CreateProgramStateCreated value) created,
    required TResult Function(CreateProgramStateCreatedError value)
        createdError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateProgramStateInitial value)? initial,
    TResult? Function(CreateProgramStateLoading value)? loading,
    TResult? Function(CreateProgramStateCreated value)? created,
    TResult? Function(CreateProgramStateCreatedError value)? createdError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateProgramStateInitial value)? initial,
    TResult Function(CreateProgramStateLoading value)? loading,
    TResult Function(CreateProgramStateCreated value)? created,
    TResult Function(CreateProgramStateCreatedError value)? createdError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CreateProgramStateInitial implements CreateProgramState {
  const factory CreateProgramStateInitial() = _$CreateProgramStateInitialImpl;
}

/// @nodoc
abstract class _$$CreateProgramStateLoadingImplCopyWith<$Res> {
  factory _$$CreateProgramStateLoadingImplCopyWith(
          _$CreateProgramStateLoadingImpl value,
          $Res Function(_$CreateProgramStateLoadingImpl) then) =
      __$$CreateProgramStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateProgramStateLoadingImplCopyWithImpl<$Res>
    extends _$CreateProgramStateCopyWithImpl<$Res,
        _$CreateProgramStateLoadingImpl>
    implements _$$CreateProgramStateLoadingImplCopyWith<$Res> {
  __$$CreateProgramStateLoadingImplCopyWithImpl(
      _$CreateProgramStateLoadingImpl _value,
      $Res Function(_$CreateProgramStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateProgramStateLoadingImpl implements CreateProgramStateLoading {
  const _$CreateProgramStateLoadingImpl();

  @override
  String toString() {
    return 'CreateProgramState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProgramStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(String? message) createdError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(String? message)? createdError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
    TResult Function(String? message)? createdError,
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
    required TResult Function(CreateProgramStateInitial value) initial,
    required TResult Function(CreateProgramStateLoading value) loading,
    required TResult Function(CreateProgramStateCreated value) created,
    required TResult Function(CreateProgramStateCreatedError value)
        createdError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateProgramStateInitial value)? initial,
    TResult? Function(CreateProgramStateLoading value)? loading,
    TResult? Function(CreateProgramStateCreated value)? created,
    TResult? Function(CreateProgramStateCreatedError value)? createdError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateProgramStateInitial value)? initial,
    TResult Function(CreateProgramStateLoading value)? loading,
    TResult Function(CreateProgramStateCreated value)? created,
    TResult Function(CreateProgramStateCreatedError value)? createdError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateProgramStateLoading implements CreateProgramState {
  const factory CreateProgramStateLoading() = _$CreateProgramStateLoadingImpl;
}

/// @nodoc
abstract class _$$CreateProgramStateCreatedImplCopyWith<$Res> {
  factory _$$CreateProgramStateCreatedImplCopyWith(
          _$CreateProgramStateCreatedImpl value,
          $Res Function(_$CreateProgramStateCreatedImpl) then) =
      __$$CreateProgramStateCreatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateProgramStateCreatedImplCopyWithImpl<$Res>
    extends _$CreateProgramStateCopyWithImpl<$Res,
        _$CreateProgramStateCreatedImpl>
    implements _$$CreateProgramStateCreatedImplCopyWith<$Res> {
  __$$CreateProgramStateCreatedImplCopyWithImpl(
      _$CreateProgramStateCreatedImpl _value,
      $Res Function(_$CreateProgramStateCreatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateProgramStateCreatedImpl implements CreateProgramStateCreated {
  const _$CreateProgramStateCreatedImpl();

  @override
  String toString() {
    return 'CreateProgramState.created()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProgramStateCreatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(String? message) createdError,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(String? message)? createdError,
  }) {
    return created?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
    TResult Function(String? message)? createdError,
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
    required TResult Function(CreateProgramStateInitial value) initial,
    required TResult Function(CreateProgramStateLoading value) loading,
    required TResult Function(CreateProgramStateCreated value) created,
    required TResult Function(CreateProgramStateCreatedError value)
        createdError,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateProgramStateInitial value)? initial,
    TResult? Function(CreateProgramStateLoading value)? loading,
    TResult? Function(CreateProgramStateCreated value)? created,
    TResult? Function(CreateProgramStateCreatedError value)? createdError,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateProgramStateInitial value)? initial,
    TResult Function(CreateProgramStateLoading value)? loading,
    TResult Function(CreateProgramStateCreated value)? created,
    TResult Function(CreateProgramStateCreatedError value)? createdError,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class CreateProgramStateCreated implements CreateProgramState {
  const factory CreateProgramStateCreated() = _$CreateProgramStateCreatedImpl;
}

/// @nodoc
abstract class _$$CreateProgramStateCreatedErrorImplCopyWith<$Res> {
  factory _$$CreateProgramStateCreatedErrorImplCopyWith(
          _$CreateProgramStateCreatedErrorImpl value,
          $Res Function(_$CreateProgramStateCreatedErrorImpl) then) =
      __$$CreateProgramStateCreatedErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CreateProgramStateCreatedErrorImplCopyWithImpl<$Res>
    extends _$CreateProgramStateCopyWithImpl<$Res,
        _$CreateProgramStateCreatedErrorImpl>
    implements _$$CreateProgramStateCreatedErrorImplCopyWith<$Res> {
  __$$CreateProgramStateCreatedErrorImplCopyWithImpl(
      _$CreateProgramStateCreatedErrorImpl _value,
      $Res Function(_$CreateProgramStateCreatedErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CreateProgramStateCreatedErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateProgramStateCreatedErrorImpl
    implements CreateProgramStateCreatedError {
  const _$CreateProgramStateCreatedErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'CreateProgramState.createdError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProgramStateCreatedErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProgramStateCreatedErrorImplCopyWith<
          _$CreateProgramStateCreatedErrorImpl>
      get copyWith => __$$CreateProgramStateCreatedErrorImplCopyWithImpl<
          _$CreateProgramStateCreatedErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() created,
    required TResult Function(String? message) createdError,
  }) {
    return createdError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? created,
    TResult? Function(String? message)? createdError,
  }) {
    return createdError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? created,
    TResult Function(String? message)? createdError,
    required TResult orElse(),
  }) {
    if (createdError != null) {
      return createdError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateProgramStateInitial value) initial,
    required TResult Function(CreateProgramStateLoading value) loading,
    required TResult Function(CreateProgramStateCreated value) created,
    required TResult Function(CreateProgramStateCreatedError value)
        createdError,
  }) {
    return createdError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateProgramStateInitial value)? initial,
    TResult? Function(CreateProgramStateLoading value)? loading,
    TResult? Function(CreateProgramStateCreated value)? created,
    TResult? Function(CreateProgramStateCreatedError value)? createdError,
  }) {
    return createdError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateProgramStateInitial value)? initial,
    TResult Function(CreateProgramStateLoading value)? loading,
    TResult Function(CreateProgramStateCreated value)? created,
    TResult Function(CreateProgramStateCreatedError value)? createdError,
    required TResult orElse(),
  }) {
    if (createdError != null) {
      return createdError(this);
    }
    return orElse();
  }
}

abstract class CreateProgramStateCreatedError implements CreateProgramState {
  const factory CreateProgramStateCreatedError({final String? message}) =
      _$CreateProgramStateCreatedErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$CreateProgramStateCreatedErrorImplCopyWith<
          _$CreateProgramStateCreatedErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
