// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_statistics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProgramStatisticsEvent {
  String get programId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String programId) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String programId)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String programId)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramStatisticsEventStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStatisticsEventStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStatisticsEventStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgramStatisticsEventCopyWith<ProgramStatisticsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramStatisticsEventCopyWith<$Res> {
  factory $ProgramStatisticsEventCopyWith(ProgramStatisticsEvent value,
          $Res Function(ProgramStatisticsEvent) then) =
      _$ProgramStatisticsEventCopyWithImpl<$Res, ProgramStatisticsEvent>;
  @useResult
  $Res call({String programId});
}

/// @nodoc
class _$ProgramStatisticsEventCopyWithImpl<$Res,
        $Val extends ProgramStatisticsEvent>
    implements $ProgramStatisticsEventCopyWith<$Res> {
  _$ProgramStatisticsEventCopyWithImpl(this._value, this._then);

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
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramStatisticsEventStartedImplCopyWith<$Res>
    implements $ProgramStatisticsEventCopyWith<$Res> {
  factory _$$ProgramStatisticsEventStartedImplCopyWith(
          _$ProgramStatisticsEventStartedImpl value,
          $Res Function(_$ProgramStatisticsEventStartedImpl) then) =
      __$$ProgramStatisticsEventStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String programId});
}

/// @nodoc
class __$$ProgramStatisticsEventStartedImplCopyWithImpl<$Res>
    extends _$ProgramStatisticsEventCopyWithImpl<$Res,
        _$ProgramStatisticsEventStartedImpl>
    implements _$$ProgramStatisticsEventStartedImplCopyWith<$Res> {
  __$$ProgramStatisticsEventStartedImplCopyWithImpl(
      _$ProgramStatisticsEventStartedImpl _value,
      $Res Function(_$ProgramStatisticsEventStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
  }) {
    return _then(_$ProgramStatisticsEventStartedImpl(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProgramStatisticsEventStartedImpl
    implements ProgramStatisticsEventStarted {
  const _$ProgramStatisticsEventStartedImpl({required this.programId});

  @override
  final String programId;

  @override
  String toString() {
    return 'ProgramStatisticsEvent.started(programId: $programId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStatisticsEventStartedImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, programId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramStatisticsEventStartedImplCopyWith<
          _$ProgramStatisticsEventStartedImpl>
      get copyWith => __$$ProgramStatisticsEventStartedImplCopyWithImpl<
          _$ProgramStatisticsEventStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String programId) started,
  }) {
    return started(programId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String programId)? started,
  }) {
    return started?.call(programId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String programId)? started,
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
    required TResult Function(ProgramStatisticsEventStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStatisticsEventStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStatisticsEventStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class ProgramStatisticsEventStarted implements ProgramStatisticsEvent {
  const factory ProgramStatisticsEventStarted(
      {required final String programId}) = _$ProgramStatisticsEventStartedImpl;

  @override
  String get programId;
  @override
  @JsonKey(ignore: true)
  _$$ProgramStatisticsEventStartedImplCopyWith<
          _$ProgramStatisticsEventStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProgramStatisticsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProgramStatistics programStatistics) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProgramStatistics programStatistics)? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProgramStatistics programStatistics)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramStatisticsStateInitial value) initial,
    required TResult Function(ProgramStatisticsStateLoading value) loading,
    required TResult Function(ProgramStatisticsStateSuccess value) success,
    required TResult Function(ProgramStatisticsStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStatisticsStateInitial value)? initial,
    TResult? Function(ProgramStatisticsStateLoading value)? loading,
    TResult? Function(ProgramStatisticsStateSuccess value)? success,
    TResult? Function(ProgramStatisticsStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStatisticsStateInitial value)? initial,
    TResult Function(ProgramStatisticsStateLoading value)? loading,
    TResult Function(ProgramStatisticsStateSuccess value)? success,
    TResult Function(ProgramStatisticsStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramStatisticsStateCopyWith<$Res> {
  factory $ProgramStatisticsStateCopyWith(ProgramStatisticsState value,
          $Res Function(ProgramStatisticsState) then) =
      _$ProgramStatisticsStateCopyWithImpl<$Res, ProgramStatisticsState>;
}

/// @nodoc
class _$ProgramStatisticsStateCopyWithImpl<$Res,
        $Val extends ProgramStatisticsState>
    implements $ProgramStatisticsStateCopyWith<$Res> {
  _$ProgramStatisticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProgramStatisticsStateInitialImplCopyWith<$Res> {
  factory _$$ProgramStatisticsStateInitialImplCopyWith(
          _$ProgramStatisticsStateInitialImpl value,
          $Res Function(_$ProgramStatisticsStateInitialImpl) then) =
      __$$ProgramStatisticsStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramStatisticsStateInitialImplCopyWithImpl<$Res>
    extends _$ProgramStatisticsStateCopyWithImpl<$Res,
        _$ProgramStatisticsStateInitialImpl>
    implements _$$ProgramStatisticsStateInitialImplCopyWith<$Res> {
  __$$ProgramStatisticsStateInitialImplCopyWithImpl(
      _$ProgramStatisticsStateInitialImpl _value,
      $Res Function(_$ProgramStatisticsStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramStatisticsStateInitialImpl
    implements ProgramStatisticsStateInitial {
  const _$ProgramStatisticsStateInitialImpl();

  @override
  String toString() {
    return 'ProgramStatisticsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStatisticsStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProgramStatistics programStatistics) success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProgramStatistics programStatistics)? success,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProgramStatistics programStatistics)? success,
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
    required TResult Function(ProgramStatisticsStateInitial value) initial,
    required TResult Function(ProgramStatisticsStateLoading value) loading,
    required TResult Function(ProgramStatisticsStateSuccess value) success,
    required TResult Function(ProgramStatisticsStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStatisticsStateInitial value)? initial,
    TResult? Function(ProgramStatisticsStateLoading value)? loading,
    TResult? Function(ProgramStatisticsStateSuccess value)? success,
    TResult? Function(ProgramStatisticsStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStatisticsStateInitial value)? initial,
    TResult Function(ProgramStatisticsStateLoading value)? loading,
    TResult Function(ProgramStatisticsStateSuccess value)? success,
    TResult Function(ProgramStatisticsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProgramStatisticsStateInitial implements ProgramStatisticsState {
  const factory ProgramStatisticsStateInitial() =
      _$ProgramStatisticsStateInitialImpl;
}

/// @nodoc
abstract class _$$ProgramStatisticsStateLoadingImplCopyWith<$Res> {
  factory _$$ProgramStatisticsStateLoadingImplCopyWith(
          _$ProgramStatisticsStateLoadingImpl value,
          $Res Function(_$ProgramStatisticsStateLoadingImpl) then) =
      __$$ProgramStatisticsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramStatisticsStateLoadingImplCopyWithImpl<$Res>
    extends _$ProgramStatisticsStateCopyWithImpl<$Res,
        _$ProgramStatisticsStateLoadingImpl>
    implements _$$ProgramStatisticsStateLoadingImplCopyWith<$Res> {
  __$$ProgramStatisticsStateLoadingImplCopyWithImpl(
      _$ProgramStatisticsStateLoadingImpl _value,
      $Res Function(_$ProgramStatisticsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramStatisticsStateLoadingImpl
    implements ProgramStatisticsStateLoading {
  const _$ProgramStatisticsStateLoadingImpl();

  @override
  String toString() {
    return 'ProgramStatisticsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStatisticsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProgramStatistics programStatistics) success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProgramStatistics programStatistics)? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProgramStatistics programStatistics)? success,
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
    required TResult Function(ProgramStatisticsStateInitial value) initial,
    required TResult Function(ProgramStatisticsStateLoading value) loading,
    required TResult Function(ProgramStatisticsStateSuccess value) success,
    required TResult Function(ProgramStatisticsStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStatisticsStateInitial value)? initial,
    TResult? Function(ProgramStatisticsStateLoading value)? loading,
    TResult? Function(ProgramStatisticsStateSuccess value)? success,
    TResult? Function(ProgramStatisticsStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStatisticsStateInitial value)? initial,
    TResult Function(ProgramStatisticsStateLoading value)? loading,
    TResult Function(ProgramStatisticsStateSuccess value)? success,
    TResult Function(ProgramStatisticsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProgramStatisticsStateLoading implements ProgramStatisticsState {
  const factory ProgramStatisticsStateLoading() =
      _$ProgramStatisticsStateLoadingImpl;
}

/// @nodoc
abstract class _$$ProgramStatisticsStateSuccessImplCopyWith<$Res> {
  factory _$$ProgramStatisticsStateSuccessImplCopyWith(
          _$ProgramStatisticsStateSuccessImpl value,
          $Res Function(_$ProgramStatisticsStateSuccessImpl) then) =
      __$$ProgramStatisticsStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProgramStatistics programStatistics});

  $ProgramStatisticsCopyWith<$Res> get programStatistics;
}

/// @nodoc
class __$$ProgramStatisticsStateSuccessImplCopyWithImpl<$Res>
    extends _$ProgramStatisticsStateCopyWithImpl<$Res,
        _$ProgramStatisticsStateSuccessImpl>
    implements _$$ProgramStatisticsStateSuccessImplCopyWith<$Res> {
  __$$ProgramStatisticsStateSuccessImplCopyWithImpl(
      _$ProgramStatisticsStateSuccessImpl _value,
      $Res Function(_$ProgramStatisticsStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programStatistics = null,
  }) {
    return _then(_$ProgramStatisticsStateSuccessImpl(
      programStatistics: null == programStatistics
          ? _value.programStatistics
          : programStatistics // ignore: cast_nullable_to_non_nullable
              as ProgramStatistics,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramStatisticsCopyWith<$Res> get programStatistics {
    return $ProgramStatisticsCopyWith<$Res>(_value.programStatistics, (value) {
      return _then(_value.copyWith(programStatistics: value));
    });
  }
}

/// @nodoc

class _$ProgramStatisticsStateSuccessImpl
    implements ProgramStatisticsStateSuccess {
  const _$ProgramStatisticsStateSuccessImpl({required this.programStatistics});

  @override
  final ProgramStatistics programStatistics;

  @override
  String toString() {
    return 'ProgramStatisticsState.success(programStatistics: $programStatistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStatisticsStateSuccessImpl &&
            (identical(other.programStatistics, programStatistics) ||
                other.programStatistics == programStatistics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, programStatistics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramStatisticsStateSuccessImplCopyWith<
          _$ProgramStatisticsStateSuccessImpl>
      get copyWith => __$$ProgramStatisticsStateSuccessImplCopyWithImpl<
          _$ProgramStatisticsStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProgramStatistics programStatistics) success,
    required TResult Function() failure,
  }) {
    return success(programStatistics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProgramStatistics programStatistics)? success,
    TResult? Function()? failure,
  }) {
    return success?.call(programStatistics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProgramStatistics programStatistics)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(programStatistics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramStatisticsStateInitial value) initial,
    required TResult Function(ProgramStatisticsStateLoading value) loading,
    required TResult Function(ProgramStatisticsStateSuccess value) success,
    required TResult Function(ProgramStatisticsStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStatisticsStateInitial value)? initial,
    TResult? Function(ProgramStatisticsStateLoading value)? loading,
    TResult? Function(ProgramStatisticsStateSuccess value)? success,
    TResult? Function(ProgramStatisticsStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStatisticsStateInitial value)? initial,
    TResult Function(ProgramStatisticsStateLoading value)? loading,
    TResult Function(ProgramStatisticsStateSuccess value)? success,
    TResult Function(ProgramStatisticsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProgramStatisticsStateSuccess implements ProgramStatisticsState {
  const factory ProgramStatisticsStateSuccess(
          {required final ProgramStatistics programStatistics}) =
      _$ProgramStatisticsStateSuccessImpl;

  ProgramStatistics get programStatistics;
  @JsonKey(ignore: true)
  _$$ProgramStatisticsStateSuccessImplCopyWith<
          _$ProgramStatisticsStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramStatisticsStateFailureImplCopyWith<$Res> {
  factory _$$ProgramStatisticsStateFailureImplCopyWith(
          _$ProgramStatisticsStateFailureImpl value,
          $Res Function(_$ProgramStatisticsStateFailureImpl) then) =
      __$$ProgramStatisticsStateFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramStatisticsStateFailureImplCopyWithImpl<$Res>
    extends _$ProgramStatisticsStateCopyWithImpl<$Res,
        _$ProgramStatisticsStateFailureImpl>
    implements _$$ProgramStatisticsStateFailureImplCopyWith<$Res> {
  __$$ProgramStatisticsStateFailureImplCopyWithImpl(
      _$ProgramStatisticsStateFailureImpl _value,
      $Res Function(_$ProgramStatisticsStateFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramStatisticsStateFailureImpl
    implements ProgramStatisticsStateFailure {
  const _$ProgramStatisticsStateFailureImpl();

  @override
  String toString() {
    return 'ProgramStatisticsState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStatisticsStateFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProgramStatistics programStatistics) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProgramStatistics programStatistics)? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProgramStatistics programStatistics)? success,
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
    required TResult Function(ProgramStatisticsStateInitial value) initial,
    required TResult Function(ProgramStatisticsStateLoading value) loading,
    required TResult Function(ProgramStatisticsStateSuccess value) success,
    required TResult Function(ProgramStatisticsStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStatisticsStateInitial value)? initial,
    TResult? Function(ProgramStatisticsStateLoading value)? loading,
    TResult? Function(ProgramStatisticsStateSuccess value)? success,
    TResult? Function(ProgramStatisticsStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStatisticsStateInitial value)? initial,
    TResult Function(ProgramStatisticsStateLoading value)? loading,
    TResult Function(ProgramStatisticsStateSuccess value)? success,
    TResult Function(ProgramStatisticsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ProgramStatisticsStateFailure implements ProgramStatisticsState {
  const factory ProgramStatisticsStateFailure() =
      _$ProgramStatisticsStateFailureImpl;
}
