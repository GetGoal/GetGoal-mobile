// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProgramInfoEvent {
  String? get programId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? programId) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? programId)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? programId)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramInfoEventStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramInfoEventStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramInfoEventStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgramInfoEventCopyWith<ProgramInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramInfoEventCopyWith<$Res> {
  factory $ProgramInfoEventCopyWith(
          ProgramInfoEvent value, $Res Function(ProgramInfoEvent) then) =
      _$ProgramInfoEventCopyWithImpl<$Res, ProgramInfoEvent>;
  @useResult
  $Res call({String? programId});
}

/// @nodoc
class _$ProgramInfoEventCopyWithImpl<$Res, $Val extends ProgramInfoEvent>
    implements $ProgramInfoEventCopyWith<$Res> {
  _$ProgramInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
  }) {
    return _then(_value.copyWith(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramInfoEventStartedImplCopyWith<$Res>
    implements $ProgramInfoEventCopyWith<$Res> {
  factory _$$ProgramInfoEventStartedImplCopyWith(
          _$ProgramInfoEventStartedImpl value,
          $Res Function(_$ProgramInfoEventStartedImpl) then) =
      __$$ProgramInfoEventStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? programId});
}

/// @nodoc
class __$$ProgramInfoEventStartedImplCopyWithImpl<$Res>
    extends _$ProgramInfoEventCopyWithImpl<$Res, _$ProgramInfoEventStartedImpl>
    implements _$$ProgramInfoEventStartedImplCopyWith<$Res> {
  __$$ProgramInfoEventStartedImplCopyWithImpl(
      _$ProgramInfoEventStartedImpl _value,
      $Res Function(_$ProgramInfoEventStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
  }) {
    return _then(_$ProgramInfoEventStartedImpl(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProgramInfoEventStartedImpl implements ProgramInfoEventStarted {
  const _$ProgramInfoEventStartedImpl({required this.programId});

  @override
  final String? programId;

  @override
  String toString() {
    return 'ProgramInfoEvent.started(programId: $programId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramInfoEventStartedImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, programId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramInfoEventStartedImplCopyWith<_$ProgramInfoEventStartedImpl>
      get copyWith => __$$ProgramInfoEventStartedImplCopyWithImpl<
          _$ProgramInfoEventStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? programId) started,
  }) {
    return started(programId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? programId)? started,
  }) {
    return started?.call(programId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? programId)? started,
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
    required TResult Function(ProgramInfoEventStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramInfoEventStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramInfoEventStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class ProgramInfoEventStarted implements ProgramInfoEvent {
  const factory ProgramInfoEventStarted({required final String? programId}) =
      _$ProgramInfoEventStartedImpl;

  @override
  String? get programId;
  @override
  @JsonKey(ignore: true)
  _$$ProgramInfoEventStartedImplCopyWith<_$ProgramInfoEventStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProgramInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Program? program) loadedSuccess,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Program? program)? loadedSuccess,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Program? program)? loadedSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramInfoStateInitial value) initial,
    required TResult Function(ProgramInfoStateLoading value) loading,
    required TResult Function(ProgramInfoStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(ProgramInfoStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramInfoStateInitial value)? initial,
    TResult? Function(ProgramInfoStateLoading value)? loading,
    TResult? Function(ProgramInfoStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(ProgramInfoStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramInfoStateInitial value)? initial,
    TResult Function(ProgramInfoStateLoading value)? loading,
    TResult Function(ProgramInfoStateLoadedSuccess value)? loadedSuccess,
    TResult Function(ProgramInfoStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramInfoStateCopyWith<$Res> {
  factory $ProgramInfoStateCopyWith(
          ProgramInfoState value, $Res Function(ProgramInfoState) then) =
      _$ProgramInfoStateCopyWithImpl<$Res, ProgramInfoState>;
}

/// @nodoc
class _$ProgramInfoStateCopyWithImpl<$Res, $Val extends ProgramInfoState>
    implements $ProgramInfoStateCopyWith<$Res> {
  _$ProgramInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProgramInfoStateInitialImplCopyWith<$Res> {
  factory _$$ProgramInfoStateInitialImplCopyWith(
          _$ProgramInfoStateInitialImpl value,
          $Res Function(_$ProgramInfoStateInitialImpl) then) =
      __$$ProgramInfoStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramInfoStateInitialImplCopyWithImpl<$Res>
    extends _$ProgramInfoStateCopyWithImpl<$Res, _$ProgramInfoStateInitialImpl>
    implements _$$ProgramInfoStateInitialImplCopyWith<$Res> {
  __$$ProgramInfoStateInitialImplCopyWithImpl(
      _$ProgramInfoStateInitialImpl _value,
      $Res Function(_$ProgramInfoStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramInfoStateInitialImpl implements ProgramInfoStateInitial {
  const _$ProgramInfoStateInitialImpl();

  @override
  String toString() {
    return 'ProgramInfoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramInfoStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Program? program) loadedSuccess,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Program? program)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Program? program)? loadedSuccess,
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
    required TResult Function(ProgramInfoStateInitial value) initial,
    required TResult Function(ProgramInfoStateLoading value) loading,
    required TResult Function(ProgramInfoStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(ProgramInfoStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramInfoStateInitial value)? initial,
    TResult? Function(ProgramInfoStateLoading value)? loading,
    TResult? Function(ProgramInfoStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(ProgramInfoStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramInfoStateInitial value)? initial,
    TResult Function(ProgramInfoStateLoading value)? loading,
    TResult Function(ProgramInfoStateLoadedSuccess value)? loadedSuccess,
    TResult Function(ProgramInfoStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProgramInfoStateInitial implements ProgramInfoState {
  const factory ProgramInfoStateInitial() = _$ProgramInfoStateInitialImpl;
}

/// @nodoc
abstract class _$$ProgramInfoStateLoadingImplCopyWith<$Res> {
  factory _$$ProgramInfoStateLoadingImplCopyWith(
          _$ProgramInfoStateLoadingImpl value,
          $Res Function(_$ProgramInfoStateLoadingImpl) then) =
      __$$ProgramInfoStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramInfoStateLoadingImplCopyWithImpl<$Res>
    extends _$ProgramInfoStateCopyWithImpl<$Res, _$ProgramInfoStateLoadingImpl>
    implements _$$ProgramInfoStateLoadingImplCopyWith<$Res> {
  __$$ProgramInfoStateLoadingImplCopyWithImpl(
      _$ProgramInfoStateLoadingImpl _value,
      $Res Function(_$ProgramInfoStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramInfoStateLoadingImpl implements ProgramInfoStateLoading {
  const _$ProgramInfoStateLoadingImpl();

  @override
  String toString() {
    return 'ProgramInfoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramInfoStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Program? program) loadedSuccess,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Program? program)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Program? program)? loadedSuccess,
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
    required TResult Function(ProgramInfoStateInitial value) initial,
    required TResult Function(ProgramInfoStateLoading value) loading,
    required TResult Function(ProgramInfoStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(ProgramInfoStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramInfoStateInitial value)? initial,
    TResult? Function(ProgramInfoStateLoading value)? loading,
    TResult? Function(ProgramInfoStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(ProgramInfoStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramInfoStateInitial value)? initial,
    TResult Function(ProgramInfoStateLoading value)? loading,
    TResult Function(ProgramInfoStateLoadedSuccess value)? loadedSuccess,
    TResult Function(ProgramInfoStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProgramInfoStateLoading implements ProgramInfoState {
  const factory ProgramInfoStateLoading() = _$ProgramInfoStateLoadingImpl;
}

/// @nodoc
abstract class _$$ProgramInfoStateLoadedSuccessImplCopyWith<$Res> {
  factory _$$ProgramInfoStateLoadedSuccessImplCopyWith(
          _$ProgramInfoStateLoadedSuccessImpl value,
          $Res Function(_$ProgramInfoStateLoadedSuccessImpl) then) =
      __$$ProgramInfoStateLoadedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Program? program});

  $ProgramCopyWith<$Res>? get program;
}

/// @nodoc
class __$$ProgramInfoStateLoadedSuccessImplCopyWithImpl<$Res>
    extends _$ProgramInfoStateCopyWithImpl<$Res,
        _$ProgramInfoStateLoadedSuccessImpl>
    implements _$$ProgramInfoStateLoadedSuccessImplCopyWith<$Res> {
  __$$ProgramInfoStateLoadedSuccessImplCopyWithImpl(
      _$ProgramInfoStateLoadedSuccessImpl _value,
      $Res Function(_$ProgramInfoStateLoadedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = freezed,
  }) {
    return _then(_$ProgramInfoStateLoadedSuccessImpl(
      program: freezed == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as Program?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramCopyWith<$Res>? get program {
    if (_value.program == null) {
      return null;
    }

    return $ProgramCopyWith<$Res>(_value.program!, (value) {
      return _then(_value.copyWith(program: value));
    });
  }
}

/// @nodoc

class _$ProgramInfoStateLoadedSuccessImpl
    implements ProgramInfoStateLoadedSuccess {
  const _$ProgramInfoStateLoadedSuccessImpl({required this.program});

  @override
  final Program? program;

  @override
  String toString() {
    return 'ProgramInfoState.loadedSuccess(program: $program)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramInfoStateLoadedSuccessImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramInfoStateLoadedSuccessImplCopyWith<
          _$ProgramInfoStateLoadedSuccessImpl>
      get copyWith => __$$ProgramInfoStateLoadedSuccessImplCopyWithImpl<
          _$ProgramInfoStateLoadedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Program? program) loadedSuccess,
    required TResult Function() error,
  }) {
    return loadedSuccess(program);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Program? program)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return loadedSuccess?.call(program);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Program? program)? loadedSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(program);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramInfoStateInitial value) initial,
    required TResult Function(ProgramInfoStateLoading value) loading,
    required TResult Function(ProgramInfoStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(ProgramInfoStateError value) error,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramInfoStateInitial value)? initial,
    TResult? Function(ProgramInfoStateLoading value)? loading,
    TResult? Function(ProgramInfoStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(ProgramInfoStateError value)? error,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramInfoStateInitial value)? initial,
    TResult Function(ProgramInfoStateLoading value)? loading,
    TResult Function(ProgramInfoStateLoadedSuccess value)? loadedSuccess,
    TResult Function(ProgramInfoStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class ProgramInfoStateLoadedSuccess implements ProgramInfoState {
  const factory ProgramInfoStateLoadedSuccess(
      {required final Program? program}) = _$ProgramInfoStateLoadedSuccessImpl;

  Program? get program;
  @JsonKey(ignore: true)
  _$$ProgramInfoStateLoadedSuccessImplCopyWith<
          _$ProgramInfoStateLoadedSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramInfoStateErrorImplCopyWith<$Res> {
  factory _$$ProgramInfoStateErrorImplCopyWith(
          _$ProgramInfoStateErrorImpl value,
          $Res Function(_$ProgramInfoStateErrorImpl) then) =
      __$$ProgramInfoStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramInfoStateErrorImplCopyWithImpl<$Res>
    extends _$ProgramInfoStateCopyWithImpl<$Res, _$ProgramInfoStateErrorImpl>
    implements _$$ProgramInfoStateErrorImplCopyWith<$Res> {
  __$$ProgramInfoStateErrorImplCopyWithImpl(_$ProgramInfoStateErrorImpl _value,
      $Res Function(_$ProgramInfoStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramInfoStateErrorImpl implements ProgramInfoStateError {
  const _$ProgramInfoStateErrorImpl();

  @override
  String toString() {
    return 'ProgramInfoState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramInfoStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Program? program) loadedSuccess,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Program? program)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Program? program)? loadedSuccess,
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
    required TResult Function(ProgramInfoStateInitial value) initial,
    required TResult Function(ProgramInfoStateLoading value) loading,
    required TResult Function(ProgramInfoStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(ProgramInfoStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramInfoStateInitial value)? initial,
    TResult? Function(ProgramInfoStateLoading value)? loading,
    TResult? Function(ProgramInfoStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(ProgramInfoStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramInfoStateInitial value)? initial,
    TResult Function(ProgramInfoStateLoading value)? loading,
    TResult Function(ProgramInfoStateLoadedSuccess value)? loadedSuccess,
    TResult Function(ProgramInfoStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProgramInfoStateError implements ProgramInfoState {
  const factory ProgramInfoStateError() = _$ProgramInfoStateErrorImpl;
}
