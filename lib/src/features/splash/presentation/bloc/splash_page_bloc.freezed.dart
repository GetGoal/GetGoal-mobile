// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashPageStarted value) started,
    required TResult Function(SplashPageOnLoad value) onLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashPageStarted value)? started,
    TResult? Function(SplashPageOnLoad value)? onLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashPageStarted value)? started,
    TResult Function(SplashPageOnLoad value)? onLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashPageEventCopyWith<$Res> {
  factory $SplashPageEventCopyWith(
          SplashPageEvent value, $Res Function(SplashPageEvent) then) =
      _$SplashPageEventCopyWithImpl<$Res, SplashPageEvent>;
}

/// @nodoc
class _$SplashPageEventCopyWithImpl<$Res, $Val extends SplashPageEvent>
    implements $SplashPageEventCopyWith<$Res> {
  _$SplashPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SplashPageStartedImplCopyWith<$Res> {
  factory _$$SplashPageStartedImplCopyWith(_$SplashPageStartedImpl value,
          $Res Function(_$SplashPageStartedImpl) then) =
      __$$SplashPageStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashPageStartedImplCopyWithImpl<$Res>
    extends _$SplashPageEventCopyWithImpl<$Res, _$SplashPageStartedImpl>
    implements _$$SplashPageStartedImplCopyWith<$Res> {
  __$$SplashPageStartedImplCopyWithImpl(_$SplashPageStartedImpl _value,
      $Res Function(_$SplashPageStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashPageStartedImpl implements SplashPageStarted {
  const _$SplashPageStartedImpl();

  @override
  String toString() {
    return 'SplashPageEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashPageStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLoad,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onLoad,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoad,
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
    required TResult Function(SplashPageStarted value) started,
    required TResult Function(SplashPageOnLoad value) onLoad,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashPageStarted value)? started,
    TResult? Function(SplashPageOnLoad value)? onLoad,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashPageStarted value)? started,
    TResult Function(SplashPageOnLoad value)? onLoad,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class SplashPageStarted implements SplashPageEvent {
  const factory SplashPageStarted() = _$SplashPageStartedImpl;
}

/// @nodoc
abstract class _$$SplashPageOnLoadImplCopyWith<$Res> {
  factory _$$SplashPageOnLoadImplCopyWith(_$SplashPageOnLoadImpl value,
          $Res Function(_$SplashPageOnLoadImpl) then) =
      __$$SplashPageOnLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashPageOnLoadImplCopyWithImpl<$Res>
    extends _$SplashPageEventCopyWithImpl<$Res, _$SplashPageOnLoadImpl>
    implements _$$SplashPageOnLoadImplCopyWith<$Res> {
  __$$SplashPageOnLoadImplCopyWithImpl(_$SplashPageOnLoadImpl _value,
      $Res Function(_$SplashPageOnLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashPageOnLoadImpl implements SplashPageOnLoad {
  const _$SplashPageOnLoadImpl();

  @override
  String toString() {
    return 'SplashPageEvent.onLoad()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashPageOnLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLoad,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onLoad,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoad,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashPageStarted value) started,
    required TResult Function(SplashPageOnLoad value) onLoad,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashPageStarted value)? started,
    TResult? Function(SplashPageOnLoad value)? onLoad,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashPageStarted value)? started,
    TResult Function(SplashPageOnLoad value)? onLoad,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class SplashPageOnLoad implements SplashPageEvent {
  const factory SplashPageOnLoad() = _$SplashPageOnLoadImpl;
}

/// @nodoc
mixin _$SplashPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? valid,
    TResult? Function()? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashPageInitial value) initial,
    required TResult Function(SplashPageLoading value) loading,
    required TResult Function(SplashPageValid value) valid,
    required TResult Function(SplashPageInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashPageInitial value)? initial,
    TResult? Function(SplashPageLoading value)? loading,
    TResult? Function(SplashPageValid value)? valid,
    TResult? Function(SplashPageInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashPageInitial value)? initial,
    TResult Function(SplashPageLoading value)? loading,
    TResult Function(SplashPageValid value)? valid,
    TResult Function(SplashPageInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashPageStateCopyWith<$Res> {
  factory $SplashPageStateCopyWith(
          SplashPageState value, $Res Function(SplashPageState) then) =
      _$SplashPageStateCopyWithImpl<$Res, SplashPageState>;
}

/// @nodoc
class _$SplashPageStateCopyWithImpl<$Res, $Val extends SplashPageState>
    implements $SplashPageStateCopyWith<$Res> {
  _$SplashPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SplashPageInitialImplCopyWith<$Res> {
  factory _$$SplashPageInitialImplCopyWith(_$SplashPageInitialImpl value,
          $Res Function(_$SplashPageInitialImpl) then) =
      __$$SplashPageInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashPageInitialImplCopyWithImpl<$Res>
    extends _$SplashPageStateCopyWithImpl<$Res, _$SplashPageInitialImpl>
    implements _$$SplashPageInitialImplCopyWith<$Res> {
  __$$SplashPageInitialImplCopyWithImpl(_$SplashPageInitialImpl _value,
      $Res Function(_$SplashPageInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashPageInitialImpl implements SplashPageInitial {
  const _$SplashPageInitialImpl();

  @override
  String toString() {
    return 'SplashPageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashPageInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() invalid,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? valid,
    TResult? Function()? invalid,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? invalid,
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
    required TResult Function(SplashPageInitial value) initial,
    required TResult Function(SplashPageLoading value) loading,
    required TResult Function(SplashPageValid value) valid,
    required TResult Function(SplashPageInvalid value) invalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashPageInitial value)? initial,
    TResult? Function(SplashPageLoading value)? loading,
    TResult? Function(SplashPageValid value)? valid,
    TResult? Function(SplashPageInvalid value)? invalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashPageInitial value)? initial,
    TResult Function(SplashPageLoading value)? loading,
    TResult Function(SplashPageValid value)? valid,
    TResult Function(SplashPageInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SplashPageInitial implements SplashPageState {
  const factory SplashPageInitial() = _$SplashPageInitialImpl;
}

/// @nodoc
abstract class _$$SplashPageLoadingImplCopyWith<$Res> {
  factory _$$SplashPageLoadingImplCopyWith(_$SplashPageLoadingImpl value,
          $Res Function(_$SplashPageLoadingImpl) then) =
      __$$SplashPageLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashPageLoadingImplCopyWithImpl<$Res>
    extends _$SplashPageStateCopyWithImpl<$Res, _$SplashPageLoadingImpl>
    implements _$$SplashPageLoadingImplCopyWith<$Res> {
  __$$SplashPageLoadingImplCopyWithImpl(_$SplashPageLoadingImpl _value,
      $Res Function(_$SplashPageLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashPageLoadingImpl implements SplashPageLoading {
  const _$SplashPageLoadingImpl();

  @override
  String toString() {
    return 'SplashPageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashPageLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() invalid,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? valid,
    TResult? Function()? invalid,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? invalid,
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
    required TResult Function(SplashPageInitial value) initial,
    required TResult Function(SplashPageLoading value) loading,
    required TResult Function(SplashPageValid value) valid,
    required TResult Function(SplashPageInvalid value) invalid,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashPageInitial value)? initial,
    TResult? Function(SplashPageLoading value)? loading,
    TResult? Function(SplashPageValid value)? valid,
    TResult? Function(SplashPageInvalid value)? invalid,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashPageInitial value)? initial,
    TResult Function(SplashPageLoading value)? loading,
    TResult Function(SplashPageValid value)? valid,
    TResult Function(SplashPageInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SplashPageLoading implements SplashPageState {
  const factory SplashPageLoading() = _$SplashPageLoadingImpl;
}

/// @nodoc
abstract class _$$SplashPageValidImplCopyWith<$Res> {
  factory _$$SplashPageValidImplCopyWith(_$SplashPageValidImpl value,
          $Res Function(_$SplashPageValidImpl) then) =
      __$$SplashPageValidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashPageValidImplCopyWithImpl<$Res>
    extends _$SplashPageStateCopyWithImpl<$Res, _$SplashPageValidImpl>
    implements _$$SplashPageValidImplCopyWith<$Res> {
  __$$SplashPageValidImplCopyWithImpl(
      _$SplashPageValidImpl _value, $Res Function(_$SplashPageValidImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashPageValidImpl implements SplashPageValid {
  const _$SplashPageValidImpl();

  @override
  String toString() {
    return 'SplashPageState.valid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashPageValidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() invalid,
  }) {
    return valid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? valid,
    TResult? Function()? invalid,
  }) {
    return valid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashPageInitial value) initial,
    required TResult Function(SplashPageLoading value) loading,
    required TResult Function(SplashPageValid value) valid,
    required TResult Function(SplashPageInvalid value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashPageInitial value)? initial,
    TResult? Function(SplashPageLoading value)? loading,
    TResult? Function(SplashPageValid value)? valid,
    TResult? Function(SplashPageInvalid value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashPageInitial value)? initial,
    TResult Function(SplashPageLoading value)? loading,
    TResult Function(SplashPageValid value)? valid,
    TResult Function(SplashPageInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class SplashPageValid implements SplashPageState {
  const factory SplashPageValid() = _$SplashPageValidImpl;
}

/// @nodoc
abstract class _$$SplashPageInvalidImplCopyWith<$Res> {
  factory _$$SplashPageInvalidImplCopyWith(_$SplashPageInvalidImpl value,
          $Res Function(_$SplashPageInvalidImpl) then) =
      __$$SplashPageInvalidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashPageInvalidImplCopyWithImpl<$Res>
    extends _$SplashPageStateCopyWithImpl<$Res, _$SplashPageInvalidImpl>
    implements _$$SplashPageInvalidImplCopyWith<$Res> {
  __$$SplashPageInvalidImplCopyWithImpl(_$SplashPageInvalidImpl _value,
      $Res Function(_$SplashPageInvalidImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashPageInvalidImpl implements SplashPageInvalid {
  const _$SplashPageInvalidImpl();

  @override
  String toString() {
    return 'SplashPageState.invalid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashPageInvalidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() valid,
    required TResult Function() invalid,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? valid,
    TResult? Function()? invalid,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? valid,
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashPageInitial value) initial,
    required TResult Function(SplashPageLoading value) loading,
    required TResult Function(SplashPageValid value) valid,
    required TResult Function(SplashPageInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashPageInitial value)? initial,
    TResult? Function(SplashPageLoading value)? loading,
    TResult? Function(SplashPageValid value)? valid,
    TResult? Function(SplashPageInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashPageInitial value)? initial,
    TResult Function(SplashPageLoading value)? loading,
    TResult Function(SplashPageValid value)? valid,
    TResult Function(SplashPageInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class SplashPageInvalid implements SplashPageState {
  const factory SplashPageInvalid() = _$SplashPageInvalidImpl;
}
