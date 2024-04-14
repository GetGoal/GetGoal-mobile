// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarEvent {
  DateTime get date => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarEventStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarEventStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarEventStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarEventCopyWith<CalendarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res, CalendarEvent>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res, $Val extends CalendarEvent>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarEventStartedImplCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory _$$CalendarEventStartedImplCopyWith(_$CalendarEventStartedImpl value,
          $Res Function(_$CalendarEventStartedImpl) then) =
      __$$CalendarEventStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$CalendarEventStartedImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$CalendarEventStartedImpl>
    implements _$$CalendarEventStartedImplCopyWith<$Res> {
  __$$CalendarEventStartedImplCopyWithImpl(_$CalendarEventStartedImpl _value,
      $Res Function(_$CalendarEventStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$CalendarEventStartedImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CalendarEventStartedImpl implements CalendarEventStarted {
  const _$CalendarEventStartedImpl({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'CalendarEvent.started(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarEventStartedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarEventStartedImplCopyWith<_$CalendarEventStartedImpl>
      get copyWith =>
          __$$CalendarEventStartedImplCopyWithImpl<_$CalendarEventStartedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) started,
  }) {
    return started(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? started,
  }) {
    return started?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarEventStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarEventStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarEventStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class CalendarEventStarted implements CalendarEvent {
  const factory CalendarEventStarted({required final DateTime date}) =
      _$CalendarEventStartedImpl;

  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$CalendarEventStartedImplCopyWith<_$CalendarEventStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalendarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<DateTime, List<Event>> date) loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<DateTime, List<Event>> date)? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<DateTime, List<Event>> date)? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarStateInitial value) initial,
    required TResult Function(CalendarStateLoading value) loading,
    required TResult Function(CalendarStateSuccess value) success,
    required TResult Function(CalendarStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarStateInitial value)? initial,
    TResult? Function(CalendarStateLoading value)? loading,
    TResult? Function(CalendarStateSuccess value)? success,
    TResult? Function(CalendarStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarStateInitial value)? initial,
    TResult Function(CalendarStateLoading value)? loading,
    TResult Function(CalendarStateSuccess value)? success,
    TResult Function(CalendarStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CalendarStateInitialImplCopyWith<$Res> {
  factory _$$CalendarStateInitialImplCopyWith(_$CalendarStateInitialImpl value,
          $Res Function(_$CalendarStateInitialImpl) then) =
      __$$CalendarStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalendarStateInitialImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$CalendarStateInitialImpl>
    implements _$$CalendarStateInitialImplCopyWith<$Res> {
  __$$CalendarStateInitialImplCopyWithImpl(_$CalendarStateInitialImpl _value,
      $Res Function(_$CalendarStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalendarStateInitialImpl implements CalendarStateInitial {
  const _$CalendarStateInitialImpl();

  @override
  String toString() {
    return 'CalendarState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<DateTime, List<Event>> date) loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<DateTime, List<Event>> date)? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<DateTime, List<Event>> date)? loading,
    TResult Function()? success,
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
    required TResult Function(CalendarStateInitial value) initial,
    required TResult Function(CalendarStateLoading value) loading,
    required TResult Function(CalendarStateSuccess value) success,
    required TResult Function(CalendarStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarStateInitial value)? initial,
    TResult? Function(CalendarStateLoading value)? loading,
    TResult? Function(CalendarStateSuccess value)? success,
    TResult? Function(CalendarStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarStateInitial value)? initial,
    TResult Function(CalendarStateLoading value)? loading,
    TResult Function(CalendarStateSuccess value)? success,
    TResult Function(CalendarStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CalendarStateInitial implements CalendarState {
  const factory CalendarStateInitial() = _$CalendarStateInitialImpl;
}

/// @nodoc
abstract class _$$CalendarStateLoadingImplCopyWith<$Res> {
  factory _$$CalendarStateLoadingImplCopyWith(_$CalendarStateLoadingImpl value,
          $Res Function(_$CalendarStateLoadingImpl) then) =
      __$$CalendarStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<DateTime, List<Event>> date});
}

/// @nodoc
class __$$CalendarStateLoadingImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$CalendarStateLoadingImpl>
    implements _$$CalendarStateLoadingImplCopyWith<$Res> {
  __$$CalendarStateLoadingImplCopyWithImpl(_$CalendarStateLoadingImpl _value,
      $Res Function(_$CalendarStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$CalendarStateLoadingImpl(
      date: null == date
          ? _value._date
          : date // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<Event>>,
    ));
  }
}

/// @nodoc

class _$CalendarStateLoadingImpl implements CalendarStateLoading {
  const _$CalendarStateLoadingImpl(
      {required final Map<DateTime, List<Event>> date})
      : _date = date;

  final Map<DateTime, List<Event>> _date;
  @override
  Map<DateTime, List<Event>> get date {
    if (_date is EqualUnmodifiableMapView) return _date;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_date);
  }

  @override
  String toString() {
    return 'CalendarState.loading(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarStateLoadingImpl &&
            const DeepCollectionEquality().equals(other._date, _date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_date));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarStateLoadingImplCopyWith<_$CalendarStateLoadingImpl>
      get copyWith =>
          __$$CalendarStateLoadingImplCopyWithImpl<_$CalendarStateLoadingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<DateTime, List<Event>> date) loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return loading(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<DateTime, List<Event>> date)? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return loading?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<DateTime, List<Event>> date)? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarStateInitial value) initial,
    required TResult Function(CalendarStateLoading value) loading,
    required TResult Function(CalendarStateSuccess value) success,
    required TResult Function(CalendarStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarStateInitial value)? initial,
    TResult? Function(CalendarStateLoading value)? loading,
    TResult? Function(CalendarStateSuccess value)? success,
    TResult? Function(CalendarStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarStateInitial value)? initial,
    TResult Function(CalendarStateLoading value)? loading,
    TResult Function(CalendarStateSuccess value)? success,
    TResult Function(CalendarStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CalendarStateLoading implements CalendarState {
  const factory CalendarStateLoading(
          {required final Map<DateTime, List<Event>> date}) =
      _$CalendarStateLoadingImpl;

  Map<DateTime, List<Event>> get date;
  @JsonKey(ignore: true)
  _$$CalendarStateLoadingImplCopyWith<_$CalendarStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalendarStateSuccessImplCopyWith<$Res> {
  factory _$$CalendarStateSuccessImplCopyWith(_$CalendarStateSuccessImpl value,
          $Res Function(_$CalendarStateSuccessImpl) then) =
      __$$CalendarStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalendarStateSuccessImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$CalendarStateSuccessImpl>
    implements _$$CalendarStateSuccessImplCopyWith<$Res> {
  __$$CalendarStateSuccessImplCopyWithImpl(_$CalendarStateSuccessImpl _value,
      $Res Function(_$CalendarStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalendarStateSuccessImpl implements CalendarStateSuccess {
  const _$CalendarStateSuccessImpl();

  @override
  String toString() {
    return 'CalendarState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<DateTime, List<Event>> date) loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<DateTime, List<Event>> date)? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<DateTime, List<Event>> date)? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarStateInitial value) initial,
    required TResult Function(CalendarStateLoading value) loading,
    required TResult Function(CalendarStateSuccess value) success,
    required TResult Function(CalendarStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarStateInitial value)? initial,
    TResult? Function(CalendarStateLoading value)? loading,
    TResult? Function(CalendarStateSuccess value)? success,
    TResult? Function(CalendarStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarStateInitial value)? initial,
    TResult Function(CalendarStateLoading value)? loading,
    TResult Function(CalendarStateSuccess value)? success,
    TResult Function(CalendarStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CalendarStateSuccess implements CalendarState {
  const factory CalendarStateSuccess() = _$CalendarStateSuccessImpl;
}

/// @nodoc
abstract class _$$CalendarStateFailureImplCopyWith<$Res> {
  factory _$$CalendarStateFailureImplCopyWith(_$CalendarStateFailureImpl value,
          $Res Function(_$CalendarStateFailureImpl) then) =
      __$$CalendarStateFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalendarStateFailureImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$CalendarStateFailureImpl>
    implements _$$CalendarStateFailureImplCopyWith<$Res> {
  __$$CalendarStateFailureImplCopyWithImpl(_$CalendarStateFailureImpl _value,
      $Res Function(_$CalendarStateFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalendarStateFailureImpl implements CalendarStateFailure {
  const _$CalendarStateFailureImpl();

  @override
  String toString() {
    return 'CalendarState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarStateFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<DateTime, List<Event>> date) loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<DateTime, List<Event>> date)? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<DateTime, List<Event>> date)? loading,
    TResult Function()? success,
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
    required TResult Function(CalendarStateInitial value) initial,
    required TResult Function(CalendarStateLoading value) loading,
    required TResult Function(CalendarStateSuccess value) success,
    required TResult Function(CalendarStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarStateInitial value)? initial,
    TResult? Function(CalendarStateLoading value)? loading,
    TResult? Function(CalendarStateSuccess value)? success,
    TResult? Function(CalendarStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarStateInitial value)? initial,
    TResult Function(CalendarStateLoading value)? loading,
    TResult Function(CalendarStateSuccess value)? success,
    TResult Function(CalendarStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CalendarStateFailure implements CalendarState {
  const factory CalendarStateFailure() = _$CalendarStateFailureImpl;
}
