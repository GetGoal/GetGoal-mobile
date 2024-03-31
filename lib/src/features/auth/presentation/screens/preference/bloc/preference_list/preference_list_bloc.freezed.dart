// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preference_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PreferenceListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProgramFilter> labels) onTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProgramFilter> labels)? onTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProgramFilter> labels)? onTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreferenceListEventStarted value) started,
    required TResult Function(PreferenceListEventOnTapped value) onTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferenceListEventStarted value)? started,
    TResult? Function(PreferenceListEventOnTapped value)? onTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferenceListEventStarted value)? started,
    TResult Function(PreferenceListEventOnTapped value)? onTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceListEventCopyWith<$Res> {
  factory $PreferenceListEventCopyWith(
          PreferenceListEvent value, $Res Function(PreferenceListEvent) then) =
      _$PreferenceListEventCopyWithImpl<$Res, PreferenceListEvent>;
}

/// @nodoc
class _$PreferenceListEventCopyWithImpl<$Res, $Val extends PreferenceListEvent>
    implements $PreferenceListEventCopyWith<$Res> {
  _$PreferenceListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PreferenceListEventStartedImplCopyWith<$Res> {
  factory _$$PreferenceListEventStartedImplCopyWith(
          _$PreferenceListEventStartedImpl value,
          $Res Function(_$PreferenceListEventStartedImpl) then) =
      __$$PreferenceListEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreferenceListEventStartedImplCopyWithImpl<$Res>
    extends _$PreferenceListEventCopyWithImpl<$Res,
        _$PreferenceListEventStartedImpl>
    implements _$$PreferenceListEventStartedImplCopyWith<$Res> {
  __$$PreferenceListEventStartedImplCopyWithImpl(
      _$PreferenceListEventStartedImpl _value,
      $Res Function(_$PreferenceListEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreferenceListEventStartedImpl implements PreferenceListEventStarted {
  const _$PreferenceListEventStartedImpl();

  @override
  String toString() {
    return 'PreferenceListEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferenceListEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProgramFilter> labels) onTapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProgramFilter> labels)? onTapped,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProgramFilter> labels)? onTapped,
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
    required TResult Function(PreferenceListEventStarted value) started,
    required TResult Function(PreferenceListEventOnTapped value) onTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferenceListEventStarted value)? started,
    TResult? Function(PreferenceListEventOnTapped value)? onTapped,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferenceListEventStarted value)? started,
    TResult Function(PreferenceListEventOnTapped value)? onTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class PreferenceListEventStarted implements PreferenceListEvent {
  const factory PreferenceListEventStarted() = _$PreferenceListEventStartedImpl;
}

/// @nodoc
abstract class _$$PreferenceListEventOnTappedImplCopyWith<$Res> {
  factory _$$PreferenceListEventOnTappedImplCopyWith(
          _$PreferenceListEventOnTappedImpl value,
          $Res Function(_$PreferenceListEventOnTappedImpl) then) =
      __$$PreferenceListEventOnTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProgramFilter> labels});
}

/// @nodoc
class __$$PreferenceListEventOnTappedImplCopyWithImpl<$Res>
    extends _$PreferenceListEventCopyWithImpl<$Res,
        _$PreferenceListEventOnTappedImpl>
    implements _$$PreferenceListEventOnTappedImplCopyWith<$Res> {
  __$$PreferenceListEventOnTappedImplCopyWithImpl(
      _$PreferenceListEventOnTappedImpl _value,
      $Res Function(_$PreferenceListEventOnTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labels = null,
  }) {
    return _then(_$PreferenceListEventOnTappedImpl(
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<ProgramFilter>,
    ));
  }
}

/// @nodoc

class _$PreferenceListEventOnTappedImpl implements PreferenceListEventOnTapped {
  const _$PreferenceListEventOnTappedImpl(
      {required final List<ProgramFilter> labels})
      : _labels = labels;

  final List<ProgramFilter> _labels;
  @override
  List<ProgramFilter> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  String toString() {
    return 'PreferenceListEvent.onTapped(labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferenceListEventOnTappedImpl &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferenceListEventOnTappedImplCopyWith<_$PreferenceListEventOnTappedImpl>
      get copyWith => __$$PreferenceListEventOnTappedImplCopyWithImpl<
          _$PreferenceListEventOnTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProgramFilter> labels) onTapped,
  }) {
    return onTapped(labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProgramFilter> labels)? onTapped,
  }) {
    return onTapped?.call(labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProgramFilter> labels)? onTapped,
    required TResult orElse(),
  }) {
    if (onTapped != null) {
      return onTapped(labels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreferenceListEventStarted value) started,
    required TResult Function(PreferenceListEventOnTapped value) onTapped,
  }) {
    return onTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferenceListEventStarted value)? started,
    TResult? Function(PreferenceListEventOnTapped value)? onTapped,
  }) {
    return onTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferenceListEventStarted value)? started,
    TResult Function(PreferenceListEventOnTapped value)? onTapped,
    required TResult orElse(),
  }) {
    if (onTapped != null) {
      return onTapped(this);
    }
    return orElse();
  }
}

abstract class PreferenceListEventOnTapped implements PreferenceListEvent {
  const factory PreferenceListEventOnTapped(
          {required final List<ProgramFilter> labels}) =
      _$PreferenceListEventOnTappedImpl;

  List<ProgramFilter> get labels;
  @JsonKey(ignore: true)
  _$$PreferenceListEventOnTappedImplCopyWith<_$PreferenceListEventOnTappedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PreferenceListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramFilter> labels) success,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgramFilter> labels)? success,
    TResult? Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgramFilter> labels)? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreferenceListStateInitial value) initial,
    required TResult Function(PreferenceListStateLoading value) loading,
    required TResult Function(PreferenceListStateSuccess value) success,
    required TResult Function(PreferenceListStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferenceListStateInitial value)? initial,
    TResult? Function(PreferenceListStateLoading value)? loading,
    TResult? Function(PreferenceListStateSuccess value)? success,
    TResult? Function(PreferenceListStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferenceListStateInitial value)? initial,
    TResult Function(PreferenceListStateLoading value)? loading,
    TResult Function(PreferenceListStateSuccess value)? success,
    TResult Function(PreferenceListStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceListStateCopyWith<$Res> {
  factory $PreferenceListStateCopyWith(
          PreferenceListState value, $Res Function(PreferenceListState) then) =
      _$PreferenceListStateCopyWithImpl<$Res, PreferenceListState>;
}

/// @nodoc
class _$PreferenceListStateCopyWithImpl<$Res, $Val extends PreferenceListState>
    implements $PreferenceListStateCopyWith<$Res> {
  _$PreferenceListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PreferenceListStateInitialImplCopyWith<$Res> {
  factory _$$PreferenceListStateInitialImplCopyWith(
          _$PreferenceListStateInitialImpl value,
          $Res Function(_$PreferenceListStateInitialImpl) then) =
      __$$PreferenceListStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreferenceListStateInitialImplCopyWithImpl<$Res>
    extends _$PreferenceListStateCopyWithImpl<$Res,
        _$PreferenceListStateInitialImpl>
    implements _$$PreferenceListStateInitialImplCopyWith<$Res> {
  __$$PreferenceListStateInitialImplCopyWithImpl(
      _$PreferenceListStateInitialImpl _value,
      $Res Function(_$PreferenceListStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreferenceListStateInitialImpl implements PreferenceListStateInitial {
  const _$PreferenceListStateInitialImpl();

  @override
  String toString() {
    return 'PreferenceListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferenceListStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramFilter> labels) success,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgramFilter> labels)? success,
    TResult? Function(String? message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgramFilter> labels)? success,
    TResult Function(String? message)? failure,
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
    required TResult Function(PreferenceListStateInitial value) initial,
    required TResult Function(PreferenceListStateLoading value) loading,
    required TResult Function(PreferenceListStateSuccess value) success,
    required TResult Function(PreferenceListStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferenceListStateInitial value)? initial,
    TResult? Function(PreferenceListStateLoading value)? loading,
    TResult? Function(PreferenceListStateSuccess value)? success,
    TResult? Function(PreferenceListStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferenceListStateInitial value)? initial,
    TResult Function(PreferenceListStateLoading value)? loading,
    TResult Function(PreferenceListStateSuccess value)? success,
    TResult Function(PreferenceListStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PreferenceListStateInitial implements PreferenceListState {
  const factory PreferenceListStateInitial() = _$PreferenceListStateInitialImpl;
}

/// @nodoc
abstract class _$$PreferenceListStateLoadingImplCopyWith<$Res> {
  factory _$$PreferenceListStateLoadingImplCopyWith(
          _$PreferenceListStateLoadingImpl value,
          $Res Function(_$PreferenceListStateLoadingImpl) then) =
      __$$PreferenceListStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreferenceListStateLoadingImplCopyWithImpl<$Res>
    extends _$PreferenceListStateCopyWithImpl<$Res,
        _$PreferenceListStateLoadingImpl>
    implements _$$PreferenceListStateLoadingImplCopyWith<$Res> {
  __$$PreferenceListStateLoadingImplCopyWithImpl(
      _$PreferenceListStateLoadingImpl _value,
      $Res Function(_$PreferenceListStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreferenceListStateLoadingImpl implements PreferenceListStateLoading {
  const _$PreferenceListStateLoadingImpl();

  @override
  String toString() {
    return 'PreferenceListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferenceListStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramFilter> labels) success,
    required TResult Function(String? message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgramFilter> labels)? success,
    TResult? Function(String? message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgramFilter> labels)? success,
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
    required TResult Function(PreferenceListStateInitial value) initial,
    required TResult Function(PreferenceListStateLoading value) loading,
    required TResult Function(PreferenceListStateSuccess value) success,
    required TResult Function(PreferenceListStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferenceListStateInitial value)? initial,
    TResult? Function(PreferenceListStateLoading value)? loading,
    TResult? Function(PreferenceListStateSuccess value)? success,
    TResult? Function(PreferenceListStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferenceListStateInitial value)? initial,
    TResult Function(PreferenceListStateLoading value)? loading,
    TResult Function(PreferenceListStateSuccess value)? success,
    TResult Function(PreferenceListStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PreferenceListStateLoading implements PreferenceListState {
  const factory PreferenceListStateLoading() = _$PreferenceListStateLoadingImpl;
}

/// @nodoc
abstract class _$$PreferenceListStateSuccessImplCopyWith<$Res> {
  factory _$$PreferenceListStateSuccessImplCopyWith(
          _$PreferenceListStateSuccessImpl value,
          $Res Function(_$PreferenceListStateSuccessImpl) then) =
      __$$PreferenceListStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProgramFilter> labels});
}

/// @nodoc
class __$$PreferenceListStateSuccessImplCopyWithImpl<$Res>
    extends _$PreferenceListStateCopyWithImpl<$Res,
        _$PreferenceListStateSuccessImpl>
    implements _$$PreferenceListStateSuccessImplCopyWith<$Res> {
  __$$PreferenceListStateSuccessImplCopyWithImpl(
      _$PreferenceListStateSuccessImpl _value,
      $Res Function(_$PreferenceListStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labels = null,
  }) {
    return _then(_$PreferenceListStateSuccessImpl(
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<ProgramFilter>,
    ));
  }
}

/// @nodoc

class _$PreferenceListStateSuccessImpl implements PreferenceListStateSuccess {
  const _$PreferenceListStateSuccessImpl(
      {required final List<ProgramFilter> labels})
      : _labels = labels;

  final List<ProgramFilter> _labels;
  @override
  List<ProgramFilter> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  String toString() {
    return 'PreferenceListState.success(labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferenceListStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferenceListStateSuccessImplCopyWith<_$PreferenceListStateSuccessImpl>
      get copyWith => __$$PreferenceListStateSuccessImplCopyWithImpl<
          _$PreferenceListStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramFilter> labels) success,
    required TResult Function(String? message) failure,
  }) {
    return success(labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgramFilter> labels)? success,
    TResult? Function(String? message)? failure,
  }) {
    return success?.call(labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgramFilter> labels)? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(labels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreferenceListStateInitial value) initial,
    required TResult Function(PreferenceListStateLoading value) loading,
    required TResult Function(PreferenceListStateSuccess value) success,
    required TResult Function(PreferenceListStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferenceListStateInitial value)? initial,
    TResult? Function(PreferenceListStateLoading value)? loading,
    TResult? Function(PreferenceListStateSuccess value)? success,
    TResult? Function(PreferenceListStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferenceListStateInitial value)? initial,
    TResult Function(PreferenceListStateLoading value)? loading,
    TResult Function(PreferenceListStateSuccess value)? success,
    TResult Function(PreferenceListStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PreferenceListStateSuccess implements PreferenceListState {
  const factory PreferenceListStateSuccess(
          {required final List<ProgramFilter> labels}) =
      _$PreferenceListStateSuccessImpl;

  List<ProgramFilter> get labels;
  @JsonKey(ignore: true)
  _$$PreferenceListStateSuccessImplCopyWith<_$PreferenceListStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreferenceListStateFailureImplCopyWith<$Res> {
  factory _$$PreferenceListStateFailureImplCopyWith(
          _$PreferenceListStateFailureImpl value,
          $Res Function(_$PreferenceListStateFailureImpl) then) =
      __$$PreferenceListStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$PreferenceListStateFailureImplCopyWithImpl<$Res>
    extends _$PreferenceListStateCopyWithImpl<$Res,
        _$PreferenceListStateFailureImpl>
    implements _$$PreferenceListStateFailureImplCopyWith<$Res> {
  __$$PreferenceListStateFailureImplCopyWithImpl(
      _$PreferenceListStateFailureImpl _value,
      $Res Function(_$PreferenceListStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PreferenceListStateFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PreferenceListStateFailureImpl implements PreferenceListStateFailure {
  const _$PreferenceListStateFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'PreferenceListState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferenceListStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferenceListStateFailureImplCopyWith<_$PreferenceListStateFailureImpl>
      get copyWith => __$$PreferenceListStateFailureImplCopyWithImpl<
          _$PreferenceListStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramFilter> labels) success,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgramFilter> labels)? success,
    TResult? Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgramFilter> labels)? success,
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
    required TResult Function(PreferenceListStateInitial value) initial,
    required TResult Function(PreferenceListStateLoading value) loading,
    required TResult Function(PreferenceListStateSuccess value) success,
    required TResult Function(PreferenceListStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreferenceListStateInitial value)? initial,
    TResult? Function(PreferenceListStateLoading value)? loading,
    TResult? Function(PreferenceListStateSuccess value)? success,
    TResult? Function(PreferenceListStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreferenceListStateInitial value)? initial,
    TResult Function(PreferenceListStateLoading value)? loading,
    TResult Function(PreferenceListStateSuccess value)? success,
    TResult Function(PreferenceListStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class PreferenceListStateFailure implements PreferenceListState {
  const factory PreferenceListStateFailure({final String? message}) =
      _$PreferenceListStateFailureImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$PreferenceListStateFailureImplCopyWith<_$PreferenceListStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
