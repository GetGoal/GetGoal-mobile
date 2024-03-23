// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_timeline_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DateTimelineEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime? selectedTime) tapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime? selectedTime)? tapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime? selectedTime)? tapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DateTimelineEventStarted value) started,
    required TResult Function(DateTimelineEventTapped value) tapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DateTimelineEventStarted value)? started,
    TResult? Function(DateTimelineEventTapped value)? tapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateTimelineEventStarted value)? started,
    TResult Function(DateTimelineEventTapped value)? tapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateTimelineEventCopyWith<$Res> {
  factory $DateTimelineEventCopyWith(
          DateTimelineEvent value, $Res Function(DateTimelineEvent) then) =
      _$DateTimelineEventCopyWithImpl<$Res, DateTimelineEvent>;
}

/// @nodoc
class _$DateTimelineEventCopyWithImpl<$Res, $Val extends DateTimelineEvent>
    implements $DateTimelineEventCopyWith<$Res> {
  _$DateTimelineEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DateTimelineEventStartedImplCopyWith<$Res> {
  factory _$$DateTimelineEventStartedImplCopyWith(
          _$DateTimelineEventStartedImpl value,
          $Res Function(_$DateTimelineEventStartedImpl) then) =
      __$$DateTimelineEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DateTimelineEventStartedImplCopyWithImpl<$Res>
    extends _$DateTimelineEventCopyWithImpl<$Res,
        _$DateTimelineEventStartedImpl>
    implements _$$DateTimelineEventStartedImplCopyWith<$Res> {
  __$$DateTimelineEventStartedImplCopyWithImpl(
      _$DateTimelineEventStartedImpl _value,
      $Res Function(_$DateTimelineEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DateTimelineEventStartedImpl implements DateTimelineEventStarted {
  const _$DateTimelineEventStartedImpl();

  @override
  String toString() {
    return 'DateTimelineEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimelineEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime? selectedTime) tapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime? selectedTime)? tapped,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime? selectedTime)? tapped,
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
    required TResult Function(DateTimelineEventStarted value) started,
    required TResult Function(DateTimelineEventTapped value) tapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DateTimelineEventStarted value)? started,
    TResult? Function(DateTimelineEventTapped value)? tapped,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateTimelineEventStarted value)? started,
    TResult Function(DateTimelineEventTapped value)? tapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class DateTimelineEventStarted implements DateTimelineEvent {
  const factory DateTimelineEventStarted() = _$DateTimelineEventStartedImpl;
}

/// @nodoc
abstract class _$$DateTimelineEventTappedImplCopyWith<$Res> {
  factory _$$DateTimelineEventTappedImplCopyWith(
          _$DateTimelineEventTappedImpl value,
          $Res Function(_$DateTimelineEventTappedImpl) then) =
      __$$DateTimelineEventTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? selectedTime});
}

/// @nodoc
class __$$DateTimelineEventTappedImplCopyWithImpl<$Res>
    extends _$DateTimelineEventCopyWithImpl<$Res, _$DateTimelineEventTappedImpl>
    implements _$$DateTimelineEventTappedImplCopyWith<$Res> {
  __$$DateTimelineEventTappedImplCopyWithImpl(
      _$DateTimelineEventTappedImpl _value,
      $Res Function(_$DateTimelineEventTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTime = freezed,
  }) {
    return _then(_$DateTimelineEventTappedImpl(
      selectedTime: freezed == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$DateTimelineEventTappedImpl implements DateTimelineEventTapped {
  const _$DateTimelineEventTappedImpl({required this.selectedTime});

  @override
  final DateTime? selectedTime;

  @override
  String toString() {
    return 'DateTimelineEvent.tapped(selectedTime: $selectedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimelineEventTappedImpl &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateTimelineEventTappedImplCopyWith<_$DateTimelineEventTappedImpl>
      get copyWith => __$$DateTimelineEventTappedImplCopyWithImpl<
          _$DateTimelineEventTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime? selectedTime) tapped,
  }) {
    return tapped(selectedTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime? selectedTime)? tapped,
  }) {
    return tapped?.call(selectedTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime? selectedTime)? tapped,
    required TResult orElse(),
  }) {
    if (tapped != null) {
      return tapped(selectedTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DateTimelineEventStarted value) started,
    required TResult Function(DateTimelineEventTapped value) tapped,
  }) {
    return tapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DateTimelineEventStarted value)? started,
    TResult? Function(DateTimelineEventTapped value)? tapped,
  }) {
    return tapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateTimelineEventStarted value)? started,
    TResult Function(DateTimelineEventTapped value)? tapped,
    required TResult orElse(),
  }) {
    if (tapped != null) {
      return tapped(this);
    }
    return orElse();
  }
}

abstract class DateTimelineEventTapped implements DateTimelineEvent {
  const factory DateTimelineEventTapped(
      {required final DateTime? selectedTime}) = _$DateTimelineEventTappedImpl;

  DateTime? get selectedTime;
  @JsonKey(ignore: true)
  _$$DateTimelineEventTappedImplCopyWith<_$DateTimelineEventTappedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DateTimelineState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime currentDate) initial,
    required TResult Function() loading,
    required TResult Function(DateTime selectedDate) loadedSuccess,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime currentDate)? initial,
    TResult? Function()? loading,
    TResult? Function(DateTime selectedDate)? loadedSuccess,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime currentDate)? initial,
    TResult Function()? loading,
    TResult Function(DateTime selectedDate)? loadedSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DateTimelineStateInitial value) initial,
    required TResult Function(DateTimelineStateLoading value) loading,
    required TResult Function(DateTimelineStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(DateTimelineStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DateTimelineStateInitial value)? initial,
    TResult? Function(DateTimelineStateLoading value)? loading,
    TResult? Function(DateTimelineStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(DateTimelineStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateTimelineStateInitial value)? initial,
    TResult Function(DateTimelineStateLoading value)? loading,
    TResult Function(DateTimelineStateLoadedSuccess value)? loadedSuccess,
    TResult Function(DateTimelineStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateTimelineStateCopyWith<$Res> {
  factory $DateTimelineStateCopyWith(
          DateTimelineState value, $Res Function(DateTimelineState) then) =
      _$DateTimelineStateCopyWithImpl<$Res, DateTimelineState>;
}

/// @nodoc
class _$DateTimelineStateCopyWithImpl<$Res, $Val extends DateTimelineState>
    implements $DateTimelineStateCopyWith<$Res> {
  _$DateTimelineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DateTimelineStateInitialImplCopyWith<$Res> {
  factory _$$DateTimelineStateInitialImplCopyWith(
          _$DateTimelineStateInitialImpl value,
          $Res Function(_$DateTimelineStateInitialImpl) then) =
      __$$DateTimelineStateInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime currentDate});
}

/// @nodoc
class __$$DateTimelineStateInitialImplCopyWithImpl<$Res>
    extends _$DateTimelineStateCopyWithImpl<$Res,
        _$DateTimelineStateInitialImpl>
    implements _$$DateTimelineStateInitialImplCopyWith<$Res> {
  __$$DateTimelineStateInitialImplCopyWithImpl(
      _$DateTimelineStateInitialImpl _value,
      $Res Function(_$DateTimelineStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentDate = null,
  }) {
    return _then(_$DateTimelineStateInitialImpl(
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateTimelineStateInitialImpl implements DateTimelineStateInitial {
  const _$DateTimelineStateInitialImpl({required this.currentDate});

  @override
  final DateTime currentDate;

  @override
  String toString() {
    return 'DateTimelineState.initial(currentDate: $currentDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimelineStateInitialImpl &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateTimelineStateInitialImplCopyWith<_$DateTimelineStateInitialImpl>
      get copyWith => __$$DateTimelineStateInitialImplCopyWithImpl<
          _$DateTimelineStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime currentDate) initial,
    required TResult Function() loading,
    required TResult Function(DateTime selectedDate) loadedSuccess,
    required TResult Function() error,
  }) {
    return initial(currentDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime currentDate)? initial,
    TResult? Function()? loading,
    TResult? Function(DateTime selectedDate)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return initial?.call(currentDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime currentDate)? initial,
    TResult Function()? loading,
    TResult Function(DateTime selectedDate)? loadedSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DateTimelineStateInitial value) initial,
    required TResult Function(DateTimelineStateLoading value) loading,
    required TResult Function(DateTimelineStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(DateTimelineStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DateTimelineStateInitial value)? initial,
    TResult? Function(DateTimelineStateLoading value)? loading,
    TResult? Function(DateTimelineStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(DateTimelineStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateTimelineStateInitial value)? initial,
    TResult Function(DateTimelineStateLoading value)? loading,
    TResult Function(DateTimelineStateLoadedSuccess value)? loadedSuccess,
    TResult Function(DateTimelineStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DateTimelineStateInitial implements DateTimelineState {
  const factory DateTimelineStateInitial(
      {required final DateTime currentDate}) = _$DateTimelineStateInitialImpl;

  DateTime get currentDate;
  @JsonKey(ignore: true)
  _$$DateTimelineStateInitialImplCopyWith<_$DateTimelineStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateTimelineStateLoadingImplCopyWith<$Res> {
  factory _$$DateTimelineStateLoadingImplCopyWith(
          _$DateTimelineStateLoadingImpl value,
          $Res Function(_$DateTimelineStateLoadingImpl) then) =
      __$$DateTimelineStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DateTimelineStateLoadingImplCopyWithImpl<$Res>
    extends _$DateTimelineStateCopyWithImpl<$Res,
        _$DateTimelineStateLoadingImpl>
    implements _$$DateTimelineStateLoadingImplCopyWith<$Res> {
  __$$DateTimelineStateLoadingImplCopyWithImpl(
      _$DateTimelineStateLoadingImpl _value,
      $Res Function(_$DateTimelineStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DateTimelineStateLoadingImpl implements DateTimelineStateLoading {
  const _$DateTimelineStateLoadingImpl();

  @override
  String toString() {
    return 'DateTimelineState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimelineStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime currentDate) initial,
    required TResult Function() loading,
    required TResult Function(DateTime selectedDate) loadedSuccess,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime currentDate)? initial,
    TResult? Function()? loading,
    TResult? Function(DateTime selectedDate)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime currentDate)? initial,
    TResult Function()? loading,
    TResult Function(DateTime selectedDate)? loadedSuccess,
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
    required TResult Function(DateTimelineStateInitial value) initial,
    required TResult Function(DateTimelineStateLoading value) loading,
    required TResult Function(DateTimelineStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(DateTimelineStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DateTimelineStateInitial value)? initial,
    TResult? Function(DateTimelineStateLoading value)? loading,
    TResult? Function(DateTimelineStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(DateTimelineStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateTimelineStateInitial value)? initial,
    TResult Function(DateTimelineStateLoading value)? loading,
    TResult Function(DateTimelineStateLoadedSuccess value)? loadedSuccess,
    TResult Function(DateTimelineStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DateTimelineStateLoading implements DateTimelineState {
  const factory DateTimelineStateLoading() = _$DateTimelineStateLoadingImpl;
}

/// @nodoc
abstract class _$$DateTimelineStateLoadedSuccessImplCopyWith<$Res> {
  factory _$$DateTimelineStateLoadedSuccessImplCopyWith(
          _$DateTimelineStateLoadedSuccessImpl value,
          $Res Function(_$DateTimelineStateLoadedSuccessImpl) then) =
      __$$DateTimelineStateLoadedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$$DateTimelineStateLoadedSuccessImplCopyWithImpl<$Res>
    extends _$DateTimelineStateCopyWithImpl<$Res,
        _$DateTimelineStateLoadedSuccessImpl>
    implements _$$DateTimelineStateLoadedSuccessImplCopyWith<$Res> {
  __$$DateTimelineStateLoadedSuccessImplCopyWithImpl(
      _$DateTimelineStateLoadedSuccessImpl _value,
      $Res Function(_$DateTimelineStateLoadedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$DateTimelineStateLoadedSuccessImpl(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateTimelineStateLoadedSuccessImpl
    implements DateTimelineStateLoadedSuccess {
  const _$DateTimelineStateLoadedSuccessImpl({required this.selectedDate});

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'DateTimelineState.loadedSuccess(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimelineStateLoadedSuccessImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateTimelineStateLoadedSuccessImplCopyWith<
          _$DateTimelineStateLoadedSuccessImpl>
      get copyWith => __$$DateTimelineStateLoadedSuccessImplCopyWithImpl<
          _$DateTimelineStateLoadedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime currentDate) initial,
    required TResult Function() loading,
    required TResult Function(DateTime selectedDate) loadedSuccess,
    required TResult Function() error,
  }) {
    return loadedSuccess(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime currentDate)? initial,
    TResult? Function()? loading,
    TResult? Function(DateTime selectedDate)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return loadedSuccess?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime currentDate)? initial,
    TResult Function()? loading,
    TResult Function(DateTime selectedDate)? loadedSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DateTimelineStateInitial value) initial,
    required TResult Function(DateTimelineStateLoading value) loading,
    required TResult Function(DateTimelineStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(DateTimelineStateError value) error,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DateTimelineStateInitial value)? initial,
    TResult? Function(DateTimelineStateLoading value)? loading,
    TResult? Function(DateTimelineStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(DateTimelineStateError value)? error,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateTimelineStateInitial value)? initial,
    TResult Function(DateTimelineStateLoading value)? loading,
    TResult Function(DateTimelineStateLoadedSuccess value)? loadedSuccess,
    TResult Function(DateTimelineStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class DateTimelineStateLoadedSuccess implements DateTimelineState {
  const factory DateTimelineStateLoadedSuccess(
          {required final DateTime selectedDate}) =
      _$DateTimelineStateLoadedSuccessImpl;

  DateTime get selectedDate;
  @JsonKey(ignore: true)
  _$$DateTimelineStateLoadedSuccessImplCopyWith<
          _$DateTimelineStateLoadedSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateTimelineStateErrorImplCopyWith<$Res> {
  factory _$$DateTimelineStateErrorImplCopyWith(
          _$DateTimelineStateErrorImpl value,
          $Res Function(_$DateTimelineStateErrorImpl) then) =
      __$$DateTimelineStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DateTimelineStateErrorImplCopyWithImpl<$Res>
    extends _$DateTimelineStateCopyWithImpl<$Res, _$DateTimelineStateErrorImpl>
    implements _$$DateTimelineStateErrorImplCopyWith<$Res> {
  __$$DateTimelineStateErrorImplCopyWithImpl(
      _$DateTimelineStateErrorImpl _value,
      $Res Function(_$DateTimelineStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DateTimelineStateErrorImpl implements DateTimelineStateError {
  const _$DateTimelineStateErrorImpl();

  @override
  String toString() {
    return 'DateTimelineState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimelineStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime currentDate) initial,
    required TResult Function() loading,
    required TResult Function(DateTime selectedDate) loadedSuccess,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime currentDate)? initial,
    TResult? Function()? loading,
    TResult? Function(DateTime selectedDate)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime currentDate)? initial,
    TResult Function()? loading,
    TResult Function(DateTime selectedDate)? loadedSuccess,
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
    required TResult Function(DateTimelineStateInitial value) initial,
    required TResult Function(DateTimelineStateLoading value) loading,
    required TResult Function(DateTimelineStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(DateTimelineStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DateTimelineStateInitial value)? initial,
    TResult? Function(DateTimelineStateLoading value)? loading,
    TResult? Function(DateTimelineStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(DateTimelineStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateTimelineStateInitial value)? initial,
    TResult Function(DateTimelineStateLoading value)? loading,
    TResult Function(DateTimelineStateLoadedSuccess value)? loadedSuccess,
    TResult Function(DateTimelineStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DateTimelineStateError implements DateTimelineState {
  const factory DateTimelineStateError() = _$DateTimelineStateErrorImpl;
}
