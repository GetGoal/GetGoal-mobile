// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_program_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProgramEvent {
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
    required TResult Function(UserProgramEventStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserProgramEventStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProgramEventStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProgramEventCopyWith<$Res> {
  factory $UserProgramEventCopyWith(
          UserProgramEvent value, $Res Function(UserProgramEvent) then) =
      _$UserProgramEventCopyWithImpl<$Res, UserProgramEvent>;
}

/// @nodoc
class _$UserProgramEventCopyWithImpl<$Res, $Val extends UserProgramEvent>
    implements $UserProgramEventCopyWith<$Res> {
  _$UserProgramEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserProgramEventStartedImplCopyWith<$Res> {
  factory _$$UserProgramEventStartedImplCopyWith(
          _$UserProgramEventStartedImpl value,
          $Res Function(_$UserProgramEventStartedImpl) then) =
      __$$UserProgramEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserProgramEventStartedImplCopyWithImpl<$Res>
    extends _$UserProgramEventCopyWithImpl<$Res, _$UserProgramEventStartedImpl>
    implements _$$UserProgramEventStartedImplCopyWith<$Res> {
  __$$UserProgramEventStartedImplCopyWithImpl(
      _$UserProgramEventStartedImpl _value,
      $Res Function(_$UserProgramEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserProgramEventStartedImpl implements UserProgramEventStarted {
  const _$UserProgramEventStartedImpl();

  @override
  String toString() {
    return 'UserProgramEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProgramEventStartedImpl);
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
    required TResult Function(UserProgramEventStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserProgramEventStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProgramEventStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class UserProgramEventStarted implements UserProgramEvent {
  const factory UserProgramEventStarted() = _$UserProgramEventStartedImpl;
}

/// @nodoc
mixin _$UserProgramState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programList) loadedSuccess,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programList)? loadedSuccess,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programList)? loadedSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProgramStateInitial value) initial,
    required TResult Function(UserProgramStateLoading value) loading,
    required TResult Function(UserProgramStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(UserProgramStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserProgramStateInitial value)? initial,
    TResult? Function(UserProgramStateLoading value)? loading,
    TResult? Function(UserProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(UserProgramStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProgramStateInitial value)? initial,
    TResult Function(UserProgramStateLoading value)? loading,
    TResult Function(UserProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(UserProgramStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProgramStateCopyWith<$Res> {
  factory $UserProgramStateCopyWith(
          UserProgramState value, $Res Function(UserProgramState) then) =
      _$UserProgramStateCopyWithImpl<$Res, UserProgramState>;
}

/// @nodoc
class _$UserProgramStateCopyWithImpl<$Res, $Val extends UserProgramState>
    implements $UserProgramStateCopyWith<$Res> {
  _$UserProgramStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserProgramStateInitialImplCopyWith<$Res> {
  factory _$$UserProgramStateInitialImplCopyWith(
          _$UserProgramStateInitialImpl value,
          $Res Function(_$UserProgramStateInitialImpl) then) =
      __$$UserProgramStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserProgramStateInitialImplCopyWithImpl<$Res>
    extends _$UserProgramStateCopyWithImpl<$Res, _$UserProgramStateInitialImpl>
    implements _$$UserProgramStateInitialImplCopyWith<$Res> {
  __$$UserProgramStateInitialImplCopyWithImpl(
      _$UserProgramStateInitialImpl _value,
      $Res Function(_$UserProgramStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserProgramStateInitialImpl implements UserProgramStateInitial {
  const _$UserProgramStateInitialImpl();

  @override
  String toString() {
    return 'UserProgramState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProgramStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programList) loadedSuccess,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programList)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programList)? loadedSuccess,
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
    required TResult Function(UserProgramStateInitial value) initial,
    required TResult Function(UserProgramStateLoading value) loading,
    required TResult Function(UserProgramStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(UserProgramStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserProgramStateInitial value)? initial,
    TResult? Function(UserProgramStateLoading value)? loading,
    TResult? Function(UserProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(UserProgramStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProgramStateInitial value)? initial,
    TResult Function(UserProgramStateLoading value)? loading,
    TResult Function(UserProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(UserProgramStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserProgramStateInitial implements UserProgramState {
  const factory UserProgramStateInitial() = _$UserProgramStateInitialImpl;
}

/// @nodoc
abstract class _$$UserProgramStateLoadingImplCopyWith<$Res> {
  factory _$$UserProgramStateLoadingImplCopyWith(
          _$UserProgramStateLoadingImpl value,
          $Res Function(_$UserProgramStateLoadingImpl) then) =
      __$$UserProgramStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserProgramStateLoadingImplCopyWithImpl<$Res>
    extends _$UserProgramStateCopyWithImpl<$Res, _$UserProgramStateLoadingImpl>
    implements _$$UserProgramStateLoadingImplCopyWith<$Res> {
  __$$UserProgramStateLoadingImplCopyWithImpl(
      _$UserProgramStateLoadingImpl _value,
      $Res Function(_$UserProgramStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserProgramStateLoadingImpl implements UserProgramStateLoading {
  const _$UserProgramStateLoadingImpl();

  @override
  String toString() {
    return 'UserProgramState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProgramStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programList) loadedSuccess,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programList)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programList)? loadedSuccess,
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
    required TResult Function(UserProgramStateInitial value) initial,
    required TResult Function(UserProgramStateLoading value) loading,
    required TResult Function(UserProgramStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(UserProgramStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserProgramStateInitial value)? initial,
    TResult? Function(UserProgramStateLoading value)? loading,
    TResult? Function(UserProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(UserProgramStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProgramStateInitial value)? initial,
    TResult Function(UserProgramStateLoading value)? loading,
    TResult Function(UserProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(UserProgramStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserProgramStateLoading implements UserProgramState {
  const factory UserProgramStateLoading() = _$UserProgramStateLoadingImpl;
}

/// @nodoc
abstract class _$$UserProgramStateLoadedSuccessImplCopyWith<$Res> {
  factory _$$UserProgramStateLoadedSuccessImplCopyWith(
          _$UserProgramStateLoadedSuccessImpl value,
          $Res Function(_$UserProgramStateLoadedSuccessImpl) then) =
      __$$UserProgramStateLoadedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Program> programList});
}

/// @nodoc
class __$$UserProgramStateLoadedSuccessImplCopyWithImpl<$Res>
    extends _$UserProgramStateCopyWithImpl<$Res,
        _$UserProgramStateLoadedSuccessImpl>
    implements _$$UserProgramStateLoadedSuccessImplCopyWith<$Res> {
  __$$UserProgramStateLoadedSuccessImplCopyWithImpl(
      _$UserProgramStateLoadedSuccessImpl _value,
      $Res Function(_$UserProgramStateLoadedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programList = null,
  }) {
    return _then(_$UserProgramStateLoadedSuccessImpl(
      programList: null == programList
          ? _value._programList
          : programList // ignore: cast_nullable_to_non_nullable
              as List<Program>,
    ));
  }
}

/// @nodoc

class _$UserProgramStateLoadedSuccessImpl
    implements UserProgramStateLoadedSuccess {
  const _$UserProgramStateLoadedSuccessImpl(
      {required final List<Program> programList})
      : _programList = programList;

  final List<Program> _programList;
  @override
  List<Program> get programList {
    if (_programList is EqualUnmodifiableListView) return _programList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programList);
  }

  @override
  String toString() {
    return 'UserProgramState.loadedSuccess(programList: $programList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProgramStateLoadedSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._programList, _programList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_programList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProgramStateLoadedSuccessImplCopyWith<
          _$UserProgramStateLoadedSuccessImpl>
      get copyWith => __$$UserProgramStateLoadedSuccessImplCopyWithImpl<
          _$UserProgramStateLoadedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programList) loadedSuccess,
    required TResult Function() error,
  }) {
    return loadedSuccess(programList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programList)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return loadedSuccess?.call(programList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programList)? loadedSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(programList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProgramStateInitial value) initial,
    required TResult Function(UserProgramStateLoading value) loading,
    required TResult Function(UserProgramStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(UserProgramStateError value) error,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserProgramStateInitial value)? initial,
    TResult? Function(UserProgramStateLoading value)? loading,
    TResult? Function(UserProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(UserProgramStateError value)? error,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProgramStateInitial value)? initial,
    TResult Function(UserProgramStateLoading value)? loading,
    TResult Function(UserProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(UserProgramStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class UserProgramStateLoadedSuccess implements UserProgramState {
  const factory UserProgramStateLoadedSuccess(
          {required final List<Program> programList}) =
      _$UserProgramStateLoadedSuccessImpl;

  List<Program> get programList;
  @JsonKey(ignore: true)
  _$$UserProgramStateLoadedSuccessImplCopyWith<
          _$UserProgramStateLoadedSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserProgramStateErrorImplCopyWith<$Res> {
  factory _$$UserProgramStateErrorImplCopyWith(
          _$UserProgramStateErrorImpl value,
          $Res Function(_$UserProgramStateErrorImpl) then) =
      __$$UserProgramStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserProgramStateErrorImplCopyWithImpl<$Res>
    extends _$UserProgramStateCopyWithImpl<$Res, _$UserProgramStateErrorImpl>
    implements _$$UserProgramStateErrorImplCopyWith<$Res> {
  __$$UserProgramStateErrorImplCopyWithImpl(_$UserProgramStateErrorImpl _value,
      $Res Function(_$UserProgramStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserProgramStateErrorImpl implements UserProgramStateError {
  const _$UserProgramStateErrorImpl();

  @override
  String toString() {
    return 'UserProgramState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProgramStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programList) loadedSuccess,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programList)? loadedSuccess,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programList)? loadedSuccess,
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
    required TResult Function(UserProgramStateInitial value) initial,
    required TResult Function(UserProgramStateLoading value) loading,
    required TResult Function(UserProgramStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(UserProgramStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserProgramStateInitial value)? initial,
    TResult? Function(UserProgramStateLoading value)? loading,
    TResult? Function(UserProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(UserProgramStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProgramStateInitial value)? initial,
    TResult Function(UserProgramStateLoading value)? loading,
    TResult Function(UserProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(UserProgramStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserProgramStateError implements UserProgramState {
  const factory UserProgramStateError() = _$UserProgramStateErrorImpl;
}
