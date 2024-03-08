// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String locale) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String locale)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String locale)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LanguageEventStarted value) started,
    required TResult Function(LanguageEventChangeLanguage value) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageEventStarted value)? started,
    TResult? Function(LanguageEventChangeLanguage value)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageEventStarted value)? started,
    TResult Function(LanguageEventChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEventCopyWith<$Res> {
  factory $LanguageEventCopyWith(
          LanguageEvent value, $Res Function(LanguageEvent) then) =
      _$LanguageEventCopyWithImpl<$Res, LanguageEvent>;
}

/// @nodoc
class _$LanguageEventCopyWithImpl<$Res, $Val extends LanguageEvent>
    implements $LanguageEventCopyWith<$Res> {
  _$LanguageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LanguageEventStartedImplCopyWith<$Res> {
  factory _$$LanguageEventStartedImplCopyWith(_$LanguageEventStartedImpl value,
          $Res Function(_$LanguageEventStartedImpl) then) =
      __$$LanguageEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LanguageEventStartedImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$LanguageEventStartedImpl>
    implements _$$LanguageEventStartedImplCopyWith<$Res> {
  __$$LanguageEventStartedImplCopyWithImpl(_$LanguageEventStartedImpl _value,
      $Res Function(_$LanguageEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LanguageEventStartedImpl implements LanguageEventStarted {
  const _$LanguageEventStartedImpl();

  @override
  String toString() {
    return 'LanguageEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String locale) changeLanguage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String locale)? changeLanguage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String locale)? changeLanguage,
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
    required TResult Function(LanguageEventStarted value) started,
    required TResult Function(LanguageEventChangeLanguage value) changeLanguage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageEventStarted value)? started,
    TResult? Function(LanguageEventChangeLanguage value)? changeLanguage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageEventStarted value)? started,
    TResult Function(LanguageEventChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class LanguageEventStarted implements LanguageEvent {
  const factory LanguageEventStarted() = _$LanguageEventStartedImpl;
}

/// @nodoc
abstract class _$$LanguageEventChangeLanguageImplCopyWith<$Res> {
  factory _$$LanguageEventChangeLanguageImplCopyWith(
          _$LanguageEventChangeLanguageImpl value,
          $Res Function(_$LanguageEventChangeLanguageImpl) then) =
      __$$LanguageEventChangeLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String locale});
}

/// @nodoc
class __$$LanguageEventChangeLanguageImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$LanguageEventChangeLanguageImpl>
    implements _$$LanguageEventChangeLanguageImplCopyWith<$Res> {
  __$$LanguageEventChangeLanguageImplCopyWithImpl(
      _$LanguageEventChangeLanguageImpl _value,
      $Res Function(_$LanguageEventChangeLanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$LanguageEventChangeLanguageImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LanguageEventChangeLanguageImpl implements LanguageEventChangeLanguage {
  const _$LanguageEventChangeLanguageImpl({required this.locale});

  @override
  final String locale;

  @override
  String toString() {
    return 'LanguageEvent.changeLanguage(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageEventChangeLanguageImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageEventChangeLanguageImplCopyWith<_$LanguageEventChangeLanguageImpl>
      get copyWith => __$$LanguageEventChangeLanguageImplCopyWithImpl<
          _$LanguageEventChangeLanguageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String locale) changeLanguage,
  }) {
    return changeLanguage(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String locale)? changeLanguage,
  }) {
    return changeLanguage?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String locale)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LanguageEventStarted value) started,
    required TResult Function(LanguageEventChangeLanguage value) changeLanguage,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageEventStarted value)? started,
    TResult? Function(LanguageEventChangeLanguage value)? changeLanguage,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageEventStarted value)? started,
    TResult Function(LanguageEventChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class LanguageEventChangeLanguage implements LanguageEvent {
  const factory LanguageEventChangeLanguage({required final String locale}) =
      _$LanguageEventChangeLanguageImpl;

  String get locale;
  @JsonKey(ignore: true)
  _$$LanguageEventChangeLanguageImplCopyWith<_$LanguageEventChangeLanguageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LanguageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String currentLocale) loadedSuccess,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String currentLocale)? loadedSuccess,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String currentLocale)? loadedSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LanguageStateInitial value) initial,
    required TResult Function(LanguageStateLoadedSuccess value) loadedSuccess,
    required TResult Function(LanguageStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageStateInitial value)? initial,
    TResult? Function(LanguageStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(LanguageStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageStateInitial value)? initial,
    TResult Function(LanguageStateLoadedSuccess value)? loadedSuccess,
    TResult Function(LanguageStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res, LanguageState>;
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res, $Val extends LanguageState>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LanguageStateInitialImplCopyWith<$Res> {
  factory _$$LanguageStateInitialImplCopyWith(_$LanguageStateInitialImpl value,
          $Res Function(_$LanguageStateInitialImpl) then) =
      __$$LanguageStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LanguageStateInitialImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$LanguageStateInitialImpl>
    implements _$$LanguageStateInitialImplCopyWith<$Res> {
  __$$LanguageStateInitialImplCopyWithImpl(_$LanguageStateInitialImpl _value,
      $Res Function(_$LanguageStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LanguageStateInitialImpl implements LanguageStateInitial {
  const _$LanguageStateInitialImpl();

  @override
  String toString() {
    return 'LanguageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String currentLocale) loadedSuccess,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String currentLocale)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String currentLocale)? loadedSuccess,
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
    required TResult Function(LanguageStateInitial value) initial,
    required TResult Function(LanguageStateLoadedSuccess value) loadedSuccess,
    required TResult Function(LanguageStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageStateInitial value)? initial,
    TResult? Function(LanguageStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(LanguageStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageStateInitial value)? initial,
    TResult Function(LanguageStateLoadedSuccess value)? loadedSuccess,
    TResult Function(LanguageStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LanguageStateInitial implements LanguageState {
  const factory LanguageStateInitial() = _$LanguageStateInitialImpl;
}

/// @nodoc
abstract class _$$LanguageStateLoadedSuccessImplCopyWith<$Res> {
  factory _$$LanguageStateLoadedSuccessImplCopyWith(
          _$LanguageStateLoadedSuccessImpl value,
          $Res Function(_$LanguageStateLoadedSuccessImpl) then) =
      __$$LanguageStateLoadedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String currentLocale});
}

/// @nodoc
class __$$LanguageStateLoadedSuccessImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$LanguageStateLoadedSuccessImpl>
    implements _$$LanguageStateLoadedSuccessImplCopyWith<$Res> {
  __$$LanguageStateLoadedSuccessImplCopyWithImpl(
      _$LanguageStateLoadedSuccessImpl _value,
      $Res Function(_$LanguageStateLoadedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocale = null,
  }) {
    return _then(_$LanguageStateLoadedSuccessImpl(
      currentLocale: null == currentLocale
          ? _value.currentLocale
          : currentLocale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LanguageStateLoadedSuccessImpl implements LanguageStateLoadedSuccess {
  const _$LanguageStateLoadedSuccessImpl({required this.currentLocale});

  @override
  final String currentLocale;

  @override
  String toString() {
    return 'LanguageState.loadedSuccess(currentLocale: $currentLocale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageStateLoadedSuccessImpl &&
            (identical(other.currentLocale, currentLocale) ||
                other.currentLocale == currentLocale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLocale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageStateLoadedSuccessImplCopyWith<_$LanguageStateLoadedSuccessImpl>
      get copyWith => __$$LanguageStateLoadedSuccessImplCopyWithImpl<
          _$LanguageStateLoadedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String currentLocale) loadedSuccess,
    required TResult Function() error,
  }) {
    return loadedSuccess(currentLocale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String currentLocale)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return loadedSuccess?.call(currentLocale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String currentLocale)? loadedSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(currentLocale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LanguageStateInitial value) initial,
    required TResult Function(LanguageStateLoadedSuccess value) loadedSuccess,
    required TResult Function(LanguageStateError value) error,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageStateInitial value)? initial,
    TResult? Function(LanguageStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(LanguageStateError value)? error,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageStateInitial value)? initial,
    TResult Function(LanguageStateLoadedSuccess value)? loadedSuccess,
    TResult Function(LanguageStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class LanguageStateLoadedSuccess implements LanguageState {
  const factory LanguageStateLoadedSuccess(
      {required final String currentLocale}) = _$LanguageStateLoadedSuccessImpl;

  String get currentLocale;
  @JsonKey(ignore: true)
  _$$LanguageStateLoadedSuccessImplCopyWith<_$LanguageStateLoadedSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LanguageStateErrorImplCopyWith<$Res> {
  factory _$$LanguageStateErrorImplCopyWith(_$LanguageStateErrorImpl value,
          $Res Function(_$LanguageStateErrorImpl) then) =
      __$$LanguageStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LanguageStateErrorImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$LanguageStateErrorImpl>
    implements _$$LanguageStateErrorImplCopyWith<$Res> {
  __$$LanguageStateErrorImplCopyWithImpl(_$LanguageStateErrorImpl _value,
      $Res Function(_$LanguageStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LanguageStateErrorImpl implements LanguageStateError {
  const _$LanguageStateErrorImpl();

  @override
  String toString() {
    return 'LanguageState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LanguageStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String currentLocale) loadedSuccess,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String currentLocale)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String currentLocale)? loadedSuccess,
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
    required TResult Function(LanguageStateInitial value) initial,
    required TResult Function(LanguageStateLoadedSuccess value) loadedSuccess,
    required TResult Function(LanguageStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageStateInitial value)? initial,
    TResult? Function(LanguageStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(LanguageStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageStateInitial value)? initial,
    TResult Function(LanguageStateLoadedSuccess value)? loadedSuccess,
    TResult Function(LanguageStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LanguageStateError implements LanguageState {
  const factory LanguageStateError() = _$LanguageStateErrorImpl;
}
