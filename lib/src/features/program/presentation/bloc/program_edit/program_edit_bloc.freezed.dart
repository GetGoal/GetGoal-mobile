// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProgramEditEvent {
  String? get programId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? programId) started,
    required TResult Function(ProgramCreate programData, String programId)
        onEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? programId)? started,
    TResult? Function(ProgramCreate programData, String programId)? onEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? programId)? started,
    TResult Function(ProgramCreate programData, String programId)? onEdit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEditEventStarted value) started,
    required TResult Function(ProgramEditEventOnEdit value) onEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEditEventStarted value)? started,
    TResult? Function(ProgramEditEventOnEdit value)? onEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEditEventStarted value)? started,
    TResult Function(ProgramEditEventOnEdit value)? onEdit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgramEditEventCopyWith<ProgramEditEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramEditEventCopyWith<$Res> {
  factory $ProgramEditEventCopyWith(
          ProgramEditEvent value, $Res Function(ProgramEditEvent) then) =
      _$ProgramEditEventCopyWithImpl<$Res, ProgramEditEvent>;
  @useResult
  $Res call({String programId});
}

/// @nodoc
class _$ProgramEditEventCopyWithImpl<$Res, $Val extends ProgramEditEvent>
    implements $ProgramEditEventCopyWith<$Res> {
  _$ProgramEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
  }) {
    return _then(_value.copyWith(
      programId: null == programId
          ? _value.programId!
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramEditEventStartedImplCopyWith<$Res>
    implements $ProgramEditEventCopyWith<$Res> {
  factory _$$ProgramEditEventStartedImplCopyWith(
          _$ProgramEditEventStartedImpl value,
          $Res Function(_$ProgramEditEventStartedImpl) then) =
      __$$ProgramEditEventStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? programId});
}

/// @nodoc
class __$$ProgramEditEventStartedImplCopyWithImpl<$Res>
    extends _$ProgramEditEventCopyWithImpl<$Res, _$ProgramEditEventStartedImpl>
    implements _$$ProgramEditEventStartedImplCopyWith<$Res> {
  __$$ProgramEditEventStartedImplCopyWithImpl(
      _$ProgramEditEventStartedImpl _value,
      $Res Function(_$ProgramEditEventStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
  }) {
    return _then(_$ProgramEditEventStartedImpl(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProgramEditEventStartedImpl implements ProgramEditEventStarted {
  const _$ProgramEditEventStartedImpl({this.programId});

  @override
  final String? programId;

  @override
  String toString() {
    return 'ProgramEditEvent.started(programId: $programId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEditEventStartedImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, programId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEditEventStartedImplCopyWith<_$ProgramEditEventStartedImpl>
      get copyWith => __$$ProgramEditEventStartedImplCopyWithImpl<
          _$ProgramEditEventStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? programId) started,
    required TResult Function(ProgramCreate programData, String programId)
        onEdit,
  }) {
    return started(programId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? programId)? started,
    TResult? Function(ProgramCreate programData, String programId)? onEdit,
  }) {
    return started?.call(programId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? programId)? started,
    TResult Function(ProgramCreate programData, String programId)? onEdit,
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
    required TResult Function(ProgramEditEventStarted value) started,
    required TResult Function(ProgramEditEventOnEdit value) onEdit,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEditEventStarted value)? started,
    TResult? Function(ProgramEditEventOnEdit value)? onEdit,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEditEventStarted value)? started,
    TResult Function(ProgramEditEventOnEdit value)? onEdit,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class ProgramEditEventStarted implements ProgramEditEvent {
  const factory ProgramEditEventStarted({final String? programId}) =
      _$ProgramEditEventStartedImpl;

  @override
  String? get programId;
  @override
  @JsonKey(ignore: true)
  _$$ProgramEditEventStartedImplCopyWith<_$ProgramEditEventStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramEditEventOnEditImplCopyWith<$Res>
    implements $ProgramEditEventCopyWith<$Res> {
  factory _$$ProgramEditEventOnEditImplCopyWith(
          _$ProgramEditEventOnEditImpl value,
          $Res Function(_$ProgramEditEventOnEditImpl) then) =
      __$$ProgramEditEventOnEditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProgramCreate programData, String programId});

  $ProgramCreateCopyWith<$Res> get programData;
}

/// @nodoc
class __$$ProgramEditEventOnEditImplCopyWithImpl<$Res>
    extends _$ProgramEditEventCopyWithImpl<$Res, _$ProgramEditEventOnEditImpl>
    implements _$$ProgramEditEventOnEditImplCopyWith<$Res> {
  __$$ProgramEditEventOnEditImplCopyWithImpl(
      _$ProgramEditEventOnEditImpl _value,
      $Res Function(_$ProgramEditEventOnEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programData = null,
    Object? programId = null,
  }) {
    return _then(_$ProgramEditEventOnEditImpl(
      programData: null == programData
          ? _value.programData
          : programData // ignore: cast_nullable_to_non_nullable
              as ProgramCreate,
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$ProgramEditEventOnEditImpl implements ProgramEditEventOnEdit {
  const _$ProgramEditEventOnEditImpl(
      {required this.programData, required this.programId});

  @override
  final ProgramCreate programData;
  @override
  final String programId;

  @override
  String toString() {
    return 'ProgramEditEvent.onEdit(programData: $programData, programId: $programId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEditEventOnEditImpl &&
            (identical(other.programData, programData) ||
                other.programData == programData) &&
            (identical(other.programId, programId) ||
                other.programId == programId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, programData, programId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEditEventOnEditImplCopyWith<_$ProgramEditEventOnEditImpl>
      get copyWith => __$$ProgramEditEventOnEditImplCopyWithImpl<
          _$ProgramEditEventOnEditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? programId) started,
    required TResult Function(ProgramCreate programData, String programId)
        onEdit,
  }) {
    return onEdit(programData, programId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? programId)? started,
    TResult? Function(ProgramCreate programData, String programId)? onEdit,
  }) {
    return onEdit?.call(programData, programId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? programId)? started,
    TResult Function(ProgramCreate programData, String programId)? onEdit,
    required TResult orElse(),
  }) {
    if (onEdit != null) {
      return onEdit(programData, programId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEditEventStarted value) started,
    required TResult Function(ProgramEditEventOnEdit value) onEdit,
  }) {
    return onEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEditEventStarted value)? started,
    TResult? Function(ProgramEditEventOnEdit value)? onEdit,
  }) {
    return onEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEditEventStarted value)? started,
    TResult Function(ProgramEditEventOnEdit value)? onEdit,
    required TResult orElse(),
  }) {
    if (onEdit != null) {
      return onEdit(this);
    }
    return orElse();
  }
}

abstract class ProgramEditEventOnEdit implements ProgramEditEvent {
  const factory ProgramEditEventOnEdit(
      {required final ProgramCreate programData,
      required final String programId}) = _$ProgramEditEventOnEditImpl;

  ProgramCreate get programData;
  @override
  String get programId;
  @override
  @JsonKey(ignore: true)
  _$$ProgramEditEventOnEditImplCopyWith<_$ProgramEditEventOnEditImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProgramEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Program? program) initial,
    required TResult Function() loading,
    required TResult Function(Program? program) success,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Program? program)? initial,
    TResult? Function()? loading,
    TResult? Function(Program? program)? success,
    TResult? Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Program? program)? initial,
    TResult Function()? loading,
    TResult Function(Program? program)? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEditStateInitial value) initial,
    required TResult Function(ProgramEditStateLoading value) loading,
    required TResult Function(ProgramEditStateEditedSuccess value) success,
    required TResult Function(ProgramEditStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEditStateInitial value)? initial,
    TResult? Function(ProgramEditStateLoading value)? loading,
    TResult? Function(ProgramEditStateEditedSuccess value)? success,
    TResult? Function(ProgramEditStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEditStateInitial value)? initial,
    TResult Function(ProgramEditStateLoading value)? loading,
    TResult Function(ProgramEditStateEditedSuccess value)? success,
    TResult Function(ProgramEditStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramEditStateCopyWith<$Res> {
  factory $ProgramEditStateCopyWith(
          ProgramEditState value, $Res Function(ProgramEditState) then) =
      _$ProgramEditStateCopyWithImpl<$Res, ProgramEditState>;
}

/// @nodoc
class _$ProgramEditStateCopyWithImpl<$Res, $Val extends ProgramEditState>
    implements $ProgramEditStateCopyWith<$Res> {
  _$ProgramEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProgramEditStateInitialImplCopyWith<$Res> {
  factory _$$ProgramEditStateInitialImplCopyWith(
          _$ProgramEditStateInitialImpl value,
          $Res Function(_$ProgramEditStateInitialImpl) then) =
      __$$ProgramEditStateInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Program? program});

  $ProgramCopyWith<$Res>? get program;
}

/// @nodoc
class __$$ProgramEditStateInitialImplCopyWithImpl<$Res>
    extends _$ProgramEditStateCopyWithImpl<$Res, _$ProgramEditStateInitialImpl>
    implements _$$ProgramEditStateInitialImplCopyWith<$Res> {
  __$$ProgramEditStateInitialImplCopyWithImpl(
      _$ProgramEditStateInitialImpl _value,
      $Res Function(_$ProgramEditStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = freezed,
  }) {
    return _then(_$ProgramEditStateInitialImpl(
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

class _$ProgramEditStateInitialImpl implements ProgramEditStateInitial {
  const _$ProgramEditStateInitialImpl({this.program});

  @override
  final Program? program;

  @override
  String toString() {
    return 'ProgramEditState.initial(program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEditStateInitialImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEditStateInitialImplCopyWith<_$ProgramEditStateInitialImpl>
      get copyWith => __$$ProgramEditStateInitialImplCopyWithImpl<
          _$ProgramEditStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Program? program) initial,
    required TResult Function() loading,
    required TResult Function(Program? program) success,
    required TResult Function(String? message) failure,
  }) {
    return initial(program);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Program? program)? initial,
    TResult? Function()? loading,
    TResult? Function(Program? program)? success,
    TResult? Function(String? message)? failure,
  }) {
    return initial?.call(program);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Program? program)? initial,
    TResult Function()? loading,
    TResult Function(Program? program)? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(program);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEditStateInitial value) initial,
    required TResult Function(ProgramEditStateLoading value) loading,
    required TResult Function(ProgramEditStateEditedSuccess value) success,
    required TResult Function(ProgramEditStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEditStateInitial value)? initial,
    TResult? Function(ProgramEditStateLoading value)? loading,
    TResult? Function(ProgramEditStateEditedSuccess value)? success,
    TResult? Function(ProgramEditStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEditStateInitial value)? initial,
    TResult Function(ProgramEditStateLoading value)? loading,
    TResult Function(ProgramEditStateEditedSuccess value)? success,
    TResult Function(ProgramEditStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProgramEditStateInitial implements ProgramEditState {
  const factory ProgramEditStateInitial({final Program? program}) =
      _$ProgramEditStateInitialImpl;

  Program? get program;
  @JsonKey(ignore: true)
  _$$ProgramEditStateInitialImplCopyWith<_$ProgramEditStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramEditStateLoadingImplCopyWith<$Res> {
  factory _$$ProgramEditStateLoadingImplCopyWith(
          _$ProgramEditStateLoadingImpl value,
          $Res Function(_$ProgramEditStateLoadingImpl) then) =
      __$$ProgramEditStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramEditStateLoadingImplCopyWithImpl<$Res>
    extends _$ProgramEditStateCopyWithImpl<$Res, _$ProgramEditStateLoadingImpl>
    implements _$$ProgramEditStateLoadingImplCopyWith<$Res> {
  __$$ProgramEditStateLoadingImplCopyWithImpl(
      _$ProgramEditStateLoadingImpl _value,
      $Res Function(_$ProgramEditStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramEditStateLoadingImpl implements ProgramEditStateLoading {
  const _$ProgramEditStateLoadingImpl();

  @override
  String toString() {
    return 'ProgramEditState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEditStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Program? program) initial,
    required TResult Function() loading,
    required TResult Function(Program? program) success,
    required TResult Function(String? message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Program? program)? initial,
    TResult? Function()? loading,
    TResult? Function(Program? program)? success,
    TResult? Function(String? message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Program? program)? initial,
    TResult Function()? loading,
    TResult Function(Program? program)? success,
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
    required TResult Function(ProgramEditStateInitial value) initial,
    required TResult Function(ProgramEditStateLoading value) loading,
    required TResult Function(ProgramEditStateEditedSuccess value) success,
    required TResult Function(ProgramEditStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEditStateInitial value)? initial,
    TResult? Function(ProgramEditStateLoading value)? loading,
    TResult? Function(ProgramEditStateEditedSuccess value)? success,
    TResult? Function(ProgramEditStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEditStateInitial value)? initial,
    TResult Function(ProgramEditStateLoading value)? loading,
    TResult Function(ProgramEditStateEditedSuccess value)? success,
    TResult Function(ProgramEditStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProgramEditStateLoading implements ProgramEditState {
  const factory ProgramEditStateLoading() = _$ProgramEditStateLoadingImpl;
}

/// @nodoc
abstract class _$$ProgramEditStateEditedSuccessImplCopyWith<$Res> {
  factory _$$ProgramEditStateEditedSuccessImplCopyWith(
          _$ProgramEditStateEditedSuccessImpl value,
          $Res Function(_$ProgramEditStateEditedSuccessImpl) then) =
      __$$ProgramEditStateEditedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Program? program});

  $ProgramCopyWith<$Res>? get program;
}

/// @nodoc
class __$$ProgramEditStateEditedSuccessImplCopyWithImpl<$Res>
    extends _$ProgramEditStateCopyWithImpl<$Res,
        _$ProgramEditStateEditedSuccessImpl>
    implements _$$ProgramEditStateEditedSuccessImplCopyWith<$Res> {
  __$$ProgramEditStateEditedSuccessImplCopyWithImpl(
      _$ProgramEditStateEditedSuccessImpl _value,
      $Res Function(_$ProgramEditStateEditedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = freezed,
  }) {
    return _then(_$ProgramEditStateEditedSuccessImpl(
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

class _$ProgramEditStateEditedSuccessImpl
    implements ProgramEditStateEditedSuccess {
  const _$ProgramEditStateEditedSuccessImpl({this.program});

  @override
  final Program? program;

  @override
  String toString() {
    return 'ProgramEditState.success(program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEditStateEditedSuccessImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEditStateEditedSuccessImplCopyWith<
          _$ProgramEditStateEditedSuccessImpl>
      get copyWith => __$$ProgramEditStateEditedSuccessImplCopyWithImpl<
          _$ProgramEditStateEditedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Program? program) initial,
    required TResult Function() loading,
    required TResult Function(Program? program) success,
    required TResult Function(String? message) failure,
  }) {
    return success(program);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Program? program)? initial,
    TResult? Function()? loading,
    TResult? Function(Program? program)? success,
    TResult? Function(String? message)? failure,
  }) {
    return success?.call(program);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Program? program)? initial,
    TResult Function()? loading,
    TResult Function(Program? program)? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(program);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEditStateInitial value) initial,
    required TResult Function(ProgramEditStateLoading value) loading,
    required TResult Function(ProgramEditStateEditedSuccess value) success,
    required TResult Function(ProgramEditStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEditStateInitial value)? initial,
    TResult? Function(ProgramEditStateLoading value)? loading,
    TResult? Function(ProgramEditStateEditedSuccess value)? success,
    TResult? Function(ProgramEditStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEditStateInitial value)? initial,
    TResult Function(ProgramEditStateLoading value)? loading,
    TResult Function(ProgramEditStateEditedSuccess value)? success,
    TResult Function(ProgramEditStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProgramEditStateEditedSuccess implements ProgramEditState {
  const factory ProgramEditStateEditedSuccess({final Program? program}) =
      _$ProgramEditStateEditedSuccessImpl;

  Program? get program;
  @JsonKey(ignore: true)
  _$$ProgramEditStateEditedSuccessImplCopyWith<
          _$ProgramEditStateEditedSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramEditStateFailureImplCopyWith<$Res> {
  factory _$$ProgramEditStateFailureImplCopyWith(
          _$ProgramEditStateFailureImpl value,
          $Res Function(_$ProgramEditStateFailureImpl) then) =
      __$$ProgramEditStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ProgramEditStateFailureImplCopyWithImpl<$Res>
    extends _$ProgramEditStateCopyWithImpl<$Res, _$ProgramEditStateFailureImpl>
    implements _$$ProgramEditStateFailureImplCopyWith<$Res> {
  __$$ProgramEditStateFailureImplCopyWithImpl(
      _$ProgramEditStateFailureImpl _value,
      $Res Function(_$ProgramEditStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ProgramEditStateFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProgramEditStateFailureImpl implements ProgramEditStateFailure {
  const _$ProgramEditStateFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ProgramEditState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEditStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEditStateFailureImplCopyWith<_$ProgramEditStateFailureImpl>
      get copyWith => __$$ProgramEditStateFailureImplCopyWithImpl<
          _$ProgramEditStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Program? program) initial,
    required TResult Function() loading,
    required TResult Function(Program? program) success,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Program? program)? initial,
    TResult? Function()? loading,
    TResult? Function(Program? program)? success,
    TResult? Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Program? program)? initial,
    TResult Function()? loading,
    TResult Function(Program? program)? success,
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
    required TResult Function(ProgramEditStateInitial value) initial,
    required TResult Function(ProgramEditStateLoading value) loading,
    required TResult Function(ProgramEditStateEditedSuccess value) success,
    required TResult Function(ProgramEditStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEditStateInitial value)? initial,
    TResult? Function(ProgramEditStateLoading value)? loading,
    TResult? Function(ProgramEditStateEditedSuccess value)? success,
    TResult? Function(ProgramEditStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEditStateInitial value)? initial,
    TResult Function(ProgramEditStateLoading value)? loading,
    TResult Function(ProgramEditStateEditedSuccess value)? success,
    TResult Function(ProgramEditStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ProgramEditStateFailure implements ProgramEditState {
  const factory ProgramEditStateFailure({final String? message}) =
      _$ProgramEditStateFailureImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ProgramEditStateFailureImplCopyWith<_$ProgramEditStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
