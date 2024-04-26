// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_program_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecommendedProgramEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecommendedProgramEventStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedProgramEventStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedProgramEventStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedProgramEventCopyWith<$Res> {
  factory $RecommendedProgramEventCopyWith(RecommendedProgramEvent value,
          $Res Function(RecommendedProgramEvent) then) =
      _$RecommendedProgramEventCopyWithImpl<$Res, RecommendedProgramEvent>;
}

/// @nodoc
class _$RecommendedProgramEventCopyWithImpl<$Res,
        $Val extends RecommendedProgramEvent>
    implements $RecommendedProgramEventCopyWith<$Res> {
  _$RecommendedProgramEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecommendedProgramEventStartedImplCopyWith<$Res> {
  factory _$$RecommendedProgramEventStartedImplCopyWith(
          _$RecommendedProgramEventStartedImpl value,
          $Res Function(_$RecommendedProgramEventStartedImpl) then) =
      __$$RecommendedProgramEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecommendedProgramEventStartedImplCopyWithImpl<$Res>
    extends _$RecommendedProgramEventCopyWithImpl<$Res,
        _$RecommendedProgramEventStartedImpl>
    implements _$$RecommendedProgramEventStartedImplCopyWith<$Res> {
  __$$RecommendedProgramEventStartedImplCopyWithImpl(
      _$RecommendedProgramEventStartedImpl _value,
      $Res Function(_$RecommendedProgramEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecommendedProgramEventStartedImpl
    implements RecommendedProgramEventStarted {
  const _$RecommendedProgramEventStartedImpl();

  @override
  String toString() {
    return 'RecommendedProgramEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedProgramEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
    required TResult Function(RecommendedProgramEventStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedProgramEventStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedProgramEventStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class RecommendedProgramEventStarted
    implements RecommendedProgramEvent {
  const factory RecommendedProgramEventStarted() =
      _$RecommendedProgramEventStartedImpl;
}

/// @nodoc
mixin _$RecommendedProgramState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programs) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programs)? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programs)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecommendedProgramStateInitial value) initial,
    required TResult Function(RecommendedProgramStateLoading value) loading,
    required TResult Function(RecommendedProgramStateSuccess value) success,
    required TResult Function(RecommendedProgramStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedProgramStateInitial value)? initial,
    TResult? Function(RecommendedProgramStateLoading value)? loading,
    TResult? Function(RecommendedProgramStateSuccess value)? success,
    TResult? Function(RecommendedProgramStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedProgramStateInitial value)? initial,
    TResult Function(RecommendedProgramStateLoading value)? loading,
    TResult Function(RecommendedProgramStateSuccess value)? success,
    TResult Function(RecommendedProgramStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedProgramStateCopyWith<$Res> {
  factory $RecommendedProgramStateCopyWith(RecommendedProgramState value,
          $Res Function(RecommendedProgramState) then) =
      _$RecommendedProgramStateCopyWithImpl<$Res, RecommendedProgramState>;
}

/// @nodoc
class _$RecommendedProgramStateCopyWithImpl<$Res,
        $Val extends RecommendedProgramState>
    implements $RecommendedProgramStateCopyWith<$Res> {
  _$RecommendedProgramStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecommendedProgramStateInitialImplCopyWith<$Res> {
  factory _$$RecommendedProgramStateInitialImplCopyWith(
          _$RecommendedProgramStateInitialImpl value,
          $Res Function(_$RecommendedProgramStateInitialImpl) then) =
      __$$RecommendedProgramStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecommendedProgramStateInitialImplCopyWithImpl<$Res>
    extends _$RecommendedProgramStateCopyWithImpl<$Res,
        _$RecommendedProgramStateInitialImpl>
    implements _$$RecommendedProgramStateInitialImplCopyWith<$Res> {
  __$$RecommendedProgramStateInitialImplCopyWithImpl(
      _$RecommendedProgramStateInitialImpl _value,
      $Res Function(_$RecommendedProgramStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecommendedProgramStateInitialImpl
    implements RecommendedProgramStateInitial {
  const _$RecommendedProgramStateInitialImpl();

  @override
  String toString() {
    return 'RecommendedProgramState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedProgramStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programs) success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programs)? success,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programs)? success,
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
    required TResult Function(RecommendedProgramStateInitial value) initial,
    required TResult Function(RecommendedProgramStateLoading value) loading,
    required TResult Function(RecommendedProgramStateSuccess value) success,
    required TResult Function(RecommendedProgramStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedProgramStateInitial value)? initial,
    TResult? Function(RecommendedProgramStateLoading value)? loading,
    TResult? Function(RecommendedProgramStateSuccess value)? success,
    TResult? Function(RecommendedProgramStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedProgramStateInitial value)? initial,
    TResult Function(RecommendedProgramStateLoading value)? loading,
    TResult Function(RecommendedProgramStateSuccess value)? success,
    TResult Function(RecommendedProgramStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RecommendedProgramStateInitial
    implements RecommendedProgramState {
  const factory RecommendedProgramStateInitial() =
      _$RecommendedProgramStateInitialImpl;
}

/// @nodoc
abstract class _$$RecommendedProgramStateLoadingImplCopyWith<$Res> {
  factory _$$RecommendedProgramStateLoadingImplCopyWith(
          _$RecommendedProgramStateLoadingImpl value,
          $Res Function(_$RecommendedProgramStateLoadingImpl) then) =
      __$$RecommendedProgramStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecommendedProgramStateLoadingImplCopyWithImpl<$Res>
    extends _$RecommendedProgramStateCopyWithImpl<$Res,
        _$RecommendedProgramStateLoadingImpl>
    implements _$$RecommendedProgramStateLoadingImplCopyWith<$Res> {
  __$$RecommendedProgramStateLoadingImplCopyWithImpl(
      _$RecommendedProgramStateLoadingImpl _value,
      $Res Function(_$RecommendedProgramStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecommendedProgramStateLoadingImpl
    implements RecommendedProgramStateLoading {
  const _$RecommendedProgramStateLoadingImpl();

  @override
  String toString() {
    return 'RecommendedProgramState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedProgramStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programs) success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programs)? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programs)? success,
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
    required TResult Function(RecommendedProgramStateInitial value) initial,
    required TResult Function(RecommendedProgramStateLoading value) loading,
    required TResult Function(RecommendedProgramStateSuccess value) success,
    required TResult Function(RecommendedProgramStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedProgramStateInitial value)? initial,
    TResult? Function(RecommendedProgramStateLoading value)? loading,
    TResult? Function(RecommendedProgramStateSuccess value)? success,
    TResult? Function(RecommendedProgramStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedProgramStateInitial value)? initial,
    TResult Function(RecommendedProgramStateLoading value)? loading,
    TResult Function(RecommendedProgramStateSuccess value)? success,
    TResult Function(RecommendedProgramStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RecommendedProgramStateLoading
    implements RecommendedProgramState {
  const factory RecommendedProgramStateLoading() =
      _$RecommendedProgramStateLoadingImpl;
}

/// @nodoc
abstract class _$$RecommendedProgramStateSuccessImplCopyWith<$Res> {
  factory _$$RecommendedProgramStateSuccessImplCopyWith(
          _$RecommendedProgramStateSuccessImpl value,
          $Res Function(_$RecommendedProgramStateSuccessImpl) then) =
      __$$RecommendedProgramStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Program> programs});
}

/// @nodoc
class __$$RecommendedProgramStateSuccessImplCopyWithImpl<$Res>
    extends _$RecommendedProgramStateCopyWithImpl<$Res,
        _$RecommendedProgramStateSuccessImpl>
    implements _$$RecommendedProgramStateSuccessImplCopyWith<$Res> {
  __$$RecommendedProgramStateSuccessImplCopyWithImpl(
      _$RecommendedProgramStateSuccessImpl _value,
      $Res Function(_$RecommendedProgramStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programs = null,
  }) {
    return _then(_$RecommendedProgramStateSuccessImpl(
      programs: null == programs
          ? _value._programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<Program>,
    ));
  }
}

/// @nodoc

class _$RecommendedProgramStateSuccessImpl
    implements RecommendedProgramStateSuccess {
  const _$RecommendedProgramStateSuccessImpl(
      {required final List<Program> programs})
      : _programs = programs;

  final List<Program> _programs;
  @override
  List<Program> get programs {
    if (_programs is EqualUnmodifiableListView) return _programs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programs);
  }

  @override
  String toString() {
    return 'RecommendedProgramState.success(programs: $programs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedProgramStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._programs, _programs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_programs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedProgramStateSuccessImplCopyWith<
          _$RecommendedProgramStateSuccessImpl>
      get copyWith => __$$RecommendedProgramStateSuccessImplCopyWithImpl<
          _$RecommendedProgramStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programs) success,
    required TResult Function() failure,
  }) {
    return success(programs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programs)? success,
    TResult? Function()? failure,
  }) {
    return success?.call(programs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programs)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(programs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecommendedProgramStateInitial value) initial,
    required TResult Function(RecommendedProgramStateLoading value) loading,
    required TResult Function(RecommendedProgramStateSuccess value) success,
    required TResult Function(RecommendedProgramStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedProgramStateInitial value)? initial,
    TResult? Function(RecommendedProgramStateLoading value)? loading,
    TResult? Function(RecommendedProgramStateSuccess value)? success,
    TResult? Function(RecommendedProgramStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedProgramStateInitial value)? initial,
    TResult Function(RecommendedProgramStateLoading value)? loading,
    TResult Function(RecommendedProgramStateSuccess value)? success,
    TResult Function(RecommendedProgramStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RecommendedProgramStateSuccess
    implements RecommendedProgramState {
  const factory RecommendedProgramStateSuccess(
          {required final List<Program> programs}) =
      _$RecommendedProgramStateSuccessImpl;

  List<Program> get programs;
  @JsonKey(ignore: true)
  _$$RecommendedProgramStateSuccessImplCopyWith<
          _$RecommendedProgramStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecommendedProgramStateFailureImplCopyWith<$Res> {
  factory _$$RecommendedProgramStateFailureImplCopyWith(
          _$RecommendedProgramStateFailureImpl value,
          $Res Function(_$RecommendedProgramStateFailureImpl) then) =
      __$$RecommendedProgramStateFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecommendedProgramStateFailureImplCopyWithImpl<$Res>
    extends _$RecommendedProgramStateCopyWithImpl<$Res,
        _$RecommendedProgramStateFailureImpl>
    implements _$$RecommendedProgramStateFailureImplCopyWith<$Res> {
  __$$RecommendedProgramStateFailureImplCopyWithImpl(
      _$RecommendedProgramStateFailureImpl _value,
      $Res Function(_$RecommendedProgramStateFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecommendedProgramStateFailureImpl
    implements RecommendedProgramStateFailure {
  const _$RecommendedProgramStateFailureImpl();

  @override
  String toString() {
    return 'RecommendedProgramState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedProgramStateFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programs) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programs)? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programs)? success,
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
    required TResult Function(RecommendedProgramStateInitial value) initial,
    required TResult Function(RecommendedProgramStateLoading value) loading,
    required TResult Function(RecommendedProgramStateSuccess value) success,
    required TResult Function(RecommendedProgramStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecommendedProgramStateInitial value)? initial,
    TResult? Function(RecommendedProgramStateLoading value)? loading,
    TResult? Function(RecommendedProgramStateSuccess value)? success,
    TResult? Function(RecommendedProgramStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecommendedProgramStateInitial value)? initial,
    TResult Function(RecommendedProgramStateLoading value)? loading,
    TResult Function(RecommendedProgramStateSuccess value)? success,
    TResult Function(RecommendedProgramStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class RecommendedProgramStateFailure
    implements RecommendedProgramState {
  const factory RecommendedProgramStateFailure() =
      _$RecommendedProgramStateFailureImpl;
}
