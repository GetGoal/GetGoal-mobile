// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime? date) dateSelectorTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime? date)? dateSelectorTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime? date)? dateSelectorTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoEventStarted value) started,
    required TResult Function(TodoEventDateSelectorTapped value)
        dateSelectorTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoEventStarted value)? started,
    TResult? Function(TodoEventDateSelectorTapped value)? dateSelectorTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoEventStarted value)? started,
    TResult Function(TodoEventDateSelectorTapped value)? dateSelectorTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TodoEventStartedImplCopyWith<$Res> {
  factory _$$TodoEventStartedImplCopyWith(_$TodoEventStartedImpl value,
          $Res Function(_$TodoEventStartedImpl) then) =
      __$$TodoEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoEventStartedImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoEventStartedImpl>
    implements _$$TodoEventStartedImplCopyWith<$Res> {
  __$$TodoEventStartedImplCopyWithImpl(_$TodoEventStartedImpl _value,
      $Res Function(_$TodoEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoEventStartedImpl implements TodoEventStarted {
  const _$TodoEventStartedImpl();

  @override
  String toString() {
    return 'TodoEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime? date) dateSelectorTapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime? date)? dateSelectorTapped,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime? date)? dateSelectorTapped,
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
    required TResult Function(TodoEventStarted value) started,
    required TResult Function(TodoEventDateSelectorTapped value)
        dateSelectorTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoEventStarted value)? started,
    TResult? Function(TodoEventDateSelectorTapped value)? dateSelectorTapped,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoEventStarted value)? started,
    TResult Function(TodoEventDateSelectorTapped value)? dateSelectorTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class TodoEventStarted implements TodoEvent {
  const factory TodoEventStarted() = _$TodoEventStartedImpl;
}

/// @nodoc
abstract class _$$TodoEventDateSelectorTappedImplCopyWith<$Res> {
  factory _$$TodoEventDateSelectorTappedImplCopyWith(
          _$TodoEventDateSelectorTappedImpl value,
          $Res Function(_$TodoEventDateSelectorTappedImpl) then) =
      __$$TodoEventDateSelectorTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? date});
}

/// @nodoc
class __$$TodoEventDateSelectorTappedImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoEventDateSelectorTappedImpl>
    implements _$$TodoEventDateSelectorTappedImplCopyWith<$Res> {
  __$$TodoEventDateSelectorTappedImplCopyWithImpl(
      _$TodoEventDateSelectorTappedImpl _value,
      $Res Function(_$TodoEventDateSelectorTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$TodoEventDateSelectorTappedImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$TodoEventDateSelectorTappedImpl implements TodoEventDateSelectorTapped {
  const _$TodoEventDateSelectorTappedImpl({this.date});

  @override
  final DateTime? date;

  @override
  String toString() {
    return 'TodoEvent.dateSelectorTapped(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoEventDateSelectorTappedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoEventDateSelectorTappedImplCopyWith<_$TodoEventDateSelectorTappedImpl>
      get copyWith => __$$TodoEventDateSelectorTappedImplCopyWithImpl<
          _$TodoEventDateSelectorTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime? date) dateSelectorTapped,
  }) {
    return dateSelectorTapped(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime? date)? dateSelectorTapped,
  }) {
    return dateSelectorTapped?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime? date)? dateSelectorTapped,
    required TResult orElse(),
  }) {
    if (dateSelectorTapped != null) {
      return dateSelectorTapped(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoEventStarted value) started,
    required TResult Function(TodoEventDateSelectorTapped value)
        dateSelectorTapped,
  }) {
    return dateSelectorTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoEventStarted value)? started,
    TResult? Function(TodoEventDateSelectorTapped value)? dateSelectorTapped,
  }) {
    return dateSelectorTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoEventStarted value)? started,
    TResult Function(TodoEventDateSelectorTapped value)? dateSelectorTapped,
    required TResult orElse(),
  }) {
    if (dateSelectorTapped != null) {
      return dateSelectorTapped(this);
    }
    return orElse();
  }
}

abstract class TodoEventDateSelectorTapped implements TodoEvent {
  const factory TodoEventDateSelectorTapped({final DateTime? date}) =
      _$TodoEventDateSelectorTappedImpl;

  DateTime? get date;
  @JsonKey(ignore: true)
  _$$TodoEventDateSelectorTappedImplCopyWith<_$TodoEventDateSelectorTappedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> todoList, List<Task> doneList)
        loadedSuccess,
    required TResult Function() empty,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> todoList, List<Task> doneList)? loadedSuccess,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> todoList, List<Task> doneList)? loadedSuccess,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoStateInitial value) initial,
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateLoadedSuccess value) loadedSuccess,
    required TResult Function(TodoStateLoadedEmpty value) empty,
    required TResult Function(TodoStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoStateInitial value)? initial,
    TResult? Function(TodoStateLoading value)? loading,
    TResult? Function(TodoStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TodoStateLoadedEmpty value)? empty,
    TResult? Function(TodoStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoStateInitial value)? initial,
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TodoStateLoadedEmpty value)? empty,
    TResult Function(TodoStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TodoStateInitialImplCopyWith<$Res> {
  factory _$$TodoStateInitialImplCopyWith(_$TodoStateInitialImpl value,
          $Res Function(_$TodoStateInitialImpl) then) =
      __$$TodoStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoStateInitialImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateInitialImpl>
    implements _$$TodoStateInitialImplCopyWith<$Res> {
  __$$TodoStateInitialImplCopyWithImpl(_$TodoStateInitialImpl _value,
      $Res Function(_$TodoStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoStateInitialImpl implements TodoStateInitial {
  const _$TodoStateInitialImpl();

  @override
  String toString() {
    return 'TodoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> todoList, List<Task> doneList)
        loadedSuccess,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> todoList, List<Task> doneList)? loadedSuccess,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> todoList, List<Task> doneList)? loadedSuccess,
    TResult Function()? empty,
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
    required TResult Function(TodoStateInitial value) initial,
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateLoadedSuccess value) loadedSuccess,
    required TResult Function(TodoStateLoadedEmpty value) empty,
    required TResult Function(TodoStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoStateInitial value)? initial,
    TResult? Function(TodoStateLoading value)? loading,
    TResult? Function(TodoStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TodoStateLoadedEmpty value)? empty,
    TResult? Function(TodoStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoStateInitial value)? initial,
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TodoStateLoadedEmpty value)? empty,
    TResult Function(TodoStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TodoStateInitial implements TodoState {
  const factory TodoStateInitial() = _$TodoStateInitialImpl;
}

/// @nodoc
abstract class _$$TodoStateLoadingImplCopyWith<$Res> {
  factory _$$TodoStateLoadingImplCopyWith(_$TodoStateLoadingImpl value,
          $Res Function(_$TodoStateLoadingImpl) then) =
      __$$TodoStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoStateLoadingImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateLoadingImpl>
    implements _$$TodoStateLoadingImplCopyWith<$Res> {
  __$$TodoStateLoadingImplCopyWithImpl(_$TodoStateLoadingImpl _value,
      $Res Function(_$TodoStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoStateLoadingImpl implements TodoStateLoading {
  const _$TodoStateLoadingImpl();

  @override
  String toString() {
    return 'TodoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> todoList, List<Task> doneList)
        loadedSuccess,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> todoList, List<Task> doneList)? loadedSuccess,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> todoList, List<Task> doneList)? loadedSuccess,
    TResult Function()? empty,
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
    required TResult Function(TodoStateInitial value) initial,
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateLoadedSuccess value) loadedSuccess,
    required TResult Function(TodoStateLoadedEmpty value) empty,
    required TResult Function(TodoStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoStateInitial value)? initial,
    TResult? Function(TodoStateLoading value)? loading,
    TResult? Function(TodoStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TodoStateLoadedEmpty value)? empty,
    TResult? Function(TodoStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoStateInitial value)? initial,
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TodoStateLoadedEmpty value)? empty,
    TResult Function(TodoStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodoStateLoading implements TodoState {
  const factory TodoStateLoading() = _$TodoStateLoadingImpl;
}

/// @nodoc
abstract class _$$TodoStateLoadedSuccessImplCopyWith<$Res> {
  factory _$$TodoStateLoadedSuccessImplCopyWith(
          _$TodoStateLoadedSuccessImpl value,
          $Res Function(_$TodoStateLoadedSuccessImpl) then) =
      __$$TodoStateLoadedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Task> todoList, List<Task> doneList});
}

/// @nodoc
class __$$TodoStateLoadedSuccessImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateLoadedSuccessImpl>
    implements _$$TodoStateLoadedSuccessImplCopyWith<$Res> {
  __$$TodoStateLoadedSuccessImplCopyWithImpl(
      _$TodoStateLoadedSuccessImpl _value,
      $Res Function(_$TodoStateLoadedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoList = null,
    Object? doneList = null,
  }) {
    return _then(_$TodoStateLoadedSuccessImpl(
      todoList: null == todoList
          ? _value._todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      doneList: null == doneList
          ? _value._doneList
          : doneList // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$TodoStateLoadedSuccessImpl implements TodoStateLoadedSuccess {
  const _$TodoStateLoadedSuccessImpl(
      {required final List<Task> todoList, required final List<Task> doneList})
      : _todoList = todoList,
        _doneList = doneList;

  final List<Task> _todoList;
  @override
  List<Task> get todoList {
    if (_todoList is EqualUnmodifiableListView) return _todoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoList);
  }

  final List<Task> _doneList;
  @override
  List<Task> get doneList {
    if (_doneList is EqualUnmodifiableListView) return _doneList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doneList);
  }

  @override
  String toString() {
    return 'TodoState.loadedSuccess(todoList: $todoList, doneList: $doneList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoStateLoadedSuccessImpl &&
            const DeepCollectionEquality().equals(other._todoList, _todoList) &&
            const DeepCollectionEquality().equals(other._doneList, _doneList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todoList),
      const DeepCollectionEquality().hash(_doneList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoStateLoadedSuccessImplCopyWith<_$TodoStateLoadedSuccessImpl>
      get copyWith => __$$TodoStateLoadedSuccessImplCopyWithImpl<
          _$TodoStateLoadedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> todoList, List<Task> doneList)
        loadedSuccess,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return loadedSuccess(todoList, doneList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> todoList, List<Task> doneList)? loadedSuccess,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return loadedSuccess?.call(todoList, doneList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> todoList, List<Task> doneList)? loadedSuccess,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(todoList, doneList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoStateInitial value) initial,
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateLoadedSuccess value) loadedSuccess,
    required TResult Function(TodoStateLoadedEmpty value) empty,
    required TResult Function(TodoStateError value) error,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoStateInitial value)? initial,
    TResult? Function(TodoStateLoading value)? loading,
    TResult? Function(TodoStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TodoStateLoadedEmpty value)? empty,
    TResult? Function(TodoStateError value)? error,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoStateInitial value)? initial,
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TodoStateLoadedEmpty value)? empty,
    TResult Function(TodoStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class TodoStateLoadedSuccess implements TodoState {
  const factory TodoStateLoadedSuccess(
      {required final List<Task> todoList,
      required final List<Task> doneList}) = _$TodoStateLoadedSuccessImpl;

  List<Task> get todoList;
  List<Task> get doneList;
  @JsonKey(ignore: true)
  _$$TodoStateLoadedSuccessImplCopyWith<_$TodoStateLoadedSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoStateLoadedEmptyImplCopyWith<$Res> {
  factory _$$TodoStateLoadedEmptyImplCopyWith(_$TodoStateLoadedEmptyImpl value,
          $Res Function(_$TodoStateLoadedEmptyImpl) then) =
      __$$TodoStateLoadedEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoStateLoadedEmptyImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateLoadedEmptyImpl>
    implements _$$TodoStateLoadedEmptyImplCopyWith<$Res> {
  __$$TodoStateLoadedEmptyImplCopyWithImpl(_$TodoStateLoadedEmptyImpl _value,
      $Res Function(_$TodoStateLoadedEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoStateLoadedEmptyImpl implements TodoStateLoadedEmpty {
  const _$TodoStateLoadedEmptyImpl();

  @override
  String toString() {
    return 'TodoState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoStateLoadedEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> todoList, List<Task> doneList)
        loadedSuccess,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> todoList, List<Task> doneList)? loadedSuccess,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> todoList, List<Task> doneList)? loadedSuccess,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoStateInitial value) initial,
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateLoadedSuccess value) loadedSuccess,
    required TResult Function(TodoStateLoadedEmpty value) empty,
    required TResult Function(TodoStateError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoStateInitial value)? initial,
    TResult? Function(TodoStateLoading value)? loading,
    TResult? Function(TodoStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TodoStateLoadedEmpty value)? empty,
    TResult? Function(TodoStateError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoStateInitial value)? initial,
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TodoStateLoadedEmpty value)? empty,
    TResult Function(TodoStateError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class TodoStateLoadedEmpty implements TodoState {
  const factory TodoStateLoadedEmpty() = _$TodoStateLoadedEmptyImpl;
}

/// @nodoc
abstract class _$$TodoStateErrorImplCopyWith<$Res> {
  factory _$$TodoStateErrorImplCopyWith(_$TodoStateErrorImpl value,
          $Res Function(_$TodoStateErrorImpl) then) =
      __$$TodoStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoStateErrorImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateErrorImpl>
    implements _$$TodoStateErrorImplCopyWith<$Res> {
  __$$TodoStateErrorImplCopyWithImpl(
      _$TodoStateErrorImpl _value, $Res Function(_$TodoStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoStateErrorImpl implements TodoStateError {
  const _$TodoStateErrorImpl();

  @override
  String toString() {
    return 'TodoState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> todoList, List<Task> doneList)
        loadedSuccess,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> todoList, List<Task> doneList)? loadedSuccess,
    TResult? Function()? empty,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> todoList, List<Task> doneList)? loadedSuccess,
    TResult Function()? empty,
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
    required TResult Function(TodoStateInitial value) initial,
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateLoadedSuccess value) loadedSuccess,
    required TResult Function(TodoStateLoadedEmpty value) empty,
    required TResult Function(TodoStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoStateInitial value)? initial,
    TResult? Function(TodoStateLoading value)? loading,
    TResult? Function(TodoStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(TodoStateLoadedEmpty value)? empty,
    TResult? Function(TodoStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoStateInitial value)? initial,
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateLoadedSuccess value)? loadedSuccess,
    TResult Function(TodoStateLoadedEmpty value)? empty,
    TResult Function(TodoStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TodoStateError implements TodoState {
  const factory TodoStateError() = _$TodoStateErrorImpl;
}