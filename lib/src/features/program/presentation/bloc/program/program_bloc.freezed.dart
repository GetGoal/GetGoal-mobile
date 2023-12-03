// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProgramEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() clicked,
    required TResult Function(String labelName) filterClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? clicked,
    TResult? Function(String labelName)? filterClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? clicked,
    TResult Function(String labelName)? filterClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEventStart value) started,
    required TResult Function(ProgramEventClicked value) clicked,
    required TResult Function(ProgramEventFilterClicked value) filterClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventStart value)? started,
    TResult? Function(ProgramEventClicked value)? clicked,
    TResult? Function(ProgramEventFilterClicked value)? filterClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventStart value)? started,
    TResult Function(ProgramEventClicked value)? clicked,
    TResult Function(ProgramEventFilterClicked value)? filterClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramEventCopyWith<$Res> {
  factory $ProgramEventCopyWith(
          ProgramEvent value, $Res Function(ProgramEvent) then) =
      _$ProgramEventCopyWithImpl<$Res, ProgramEvent>;
}

/// @nodoc
class _$ProgramEventCopyWithImpl<$Res, $Val extends ProgramEvent>
    implements $ProgramEventCopyWith<$Res> {
  _$ProgramEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProgramEventStartImplCopyWith<$Res> {
  factory _$$ProgramEventStartImplCopyWith(_$ProgramEventStartImpl value,
          $Res Function(_$ProgramEventStartImpl) then) =
      __$$ProgramEventStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramEventStartImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res, _$ProgramEventStartImpl>
    implements _$$ProgramEventStartImplCopyWith<$Res> {
  __$$ProgramEventStartImplCopyWithImpl(_$ProgramEventStartImpl _value,
      $Res Function(_$ProgramEventStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramEventStartImpl implements ProgramEventStart {
  const _$ProgramEventStartImpl();

  @override
  String toString() {
    return 'ProgramEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProgramEventStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() clicked,
    required TResult Function(String labelName) filterClicked,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? clicked,
    TResult? Function(String labelName)? filterClicked,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? clicked,
    TResult Function(String labelName)? filterClicked,
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
    required TResult Function(ProgramEventStart value) started,
    required TResult Function(ProgramEventClicked value) clicked,
    required TResult Function(ProgramEventFilterClicked value) filterClicked,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventStart value)? started,
    TResult? Function(ProgramEventClicked value)? clicked,
    TResult? Function(ProgramEventFilterClicked value)? filterClicked,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventStart value)? started,
    TResult Function(ProgramEventClicked value)? clicked,
    TResult Function(ProgramEventFilterClicked value)? filterClicked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class ProgramEventStart implements ProgramEvent {
  const factory ProgramEventStart() = _$ProgramEventStartImpl;
}

/// @nodoc
abstract class _$$ProgramEventClickedImplCopyWith<$Res> {
  factory _$$ProgramEventClickedImplCopyWith(_$ProgramEventClickedImpl value,
          $Res Function(_$ProgramEventClickedImpl) then) =
      __$$ProgramEventClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramEventClickedImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res, _$ProgramEventClickedImpl>
    implements _$$ProgramEventClickedImplCopyWith<$Res> {
  __$$ProgramEventClickedImplCopyWithImpl(_$ProgramEventClickedImpl _value,
      $Res Function(_$ProgramEventClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramEventClickedImpl implements ProgramEventClicked {
  const _$ProgramEventClickedImpl();

  @override
  String toString() {
    return 'ProgramEvent.clicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEventClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() clicked,
    required TResult Function(String labelName) filterClicked,
  }) {
    return clicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? clicked,
    TResult? Function(String labelName)? filterClicked,
  }) {
    return clicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? clicked,
    TResult Function(String labelName)? filterClicked,
    required TResult orElse(),
  }) {
    if (clicked != null) {
      return clicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEventStart value) started,
    required TResult Function(ProgramEventClicked value) clicked,
    required TResult Function(ProgramEventFilterClicked value) filterClicked,
  }) {
    return clicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventStart value)? started,
    TResult? Function(ProgramEventClicked value)? clicked,
    TResult? Function(ProgramEventFilterClicked value)? filterClicked,
  }) {
    return clicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventStart value)? started,
    TResult Function(ProgramEventClicked value)? clicked,
    TResult Function(ProgramEventFilterClicked value)? filterClicked,
    required TResult orElse(),
  }) {
    if (clicked != null) {
      return clicked(this);
    }
    return orElse();
  }
}

abstract class ProgramEventClicked implements ProgramEvent {
  const factory ProgramEventClicked() = _$ProgramEventClickedImpl;
}

/// @nodoc
abstract class _$$ProgramEventFilterClickedImplCopyWith<$Res> {
  factory _$$ProgramEventFilterClickedImplCopyWith(
          _$ProgramEventFilterClickedImpl value,
          $Res Function(_$ProgramEventFilterClickedImpl) then) =
      __$$ProgramEventFilterClickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String labelName});
}

/// @nodoc
class __$$ProgramEventFilterClickedImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res, _$ProgramEventFilterClickedImpl>
    implements _$$ProgramEventFilterClickedImplCopyWith<$Res> {
  __$$ProgramEventFilterClickedImplCopyWithImpl(
      _$ProgramEventFilterClickedImpl _value,
      $Res Function(_$ProgramEventFilterClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelName = null,
  }) {
    return _then(_$ProgramEventFilterClickedImpl(
      labelName: null == labelName
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProgramEventFilterClickedImpl implements ProgramEventFilterClicked {
  const _$ProgramEventFilterClickedImpl({required this.labelName});

  @override
  final String labelName;

  @override
  String toString() {
    return 'ProgramEvent.filterClicked(labelName: $labelName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEventFilterClickedImpl &&
            (identical(other.labelName, labelName) ||
                other.labelName == labelName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labelName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEventFilterClickedImplCopyWith<_$ProgramEventFilterClickedImpl>
      get copyWith => __$$ProgramEventFilterClickedImplCopyWithImpl<
          _$ProgramEventFilterClickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() clicked,
    required TResult Function(String labelName) filterClicked,
  }) {
    return filterClicked(labelName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? clicked,
    TResult? Function(String labelName)? filterClicked,
  }) {
    return filterClicked?.call(labelName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? clicked,
    TResult Function(String labelName)? filterClicked,
    required TResult orElse(),
  }) {
    if (filterClicked != null) {
      return filterClicked(labelName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEventStart value) started,
    required TResult Function(ProgramEventClicked value) clicked,
    required TResult Function(ProgramEventFilterClicked value) filterClicked,
  }) {
    return filterClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventStart value)? started,
    TResult? Function(ProgramEventClicked value)? clicked,
    TResult? Function(ProgramEventFilterClicked value)? filterClicked,
  }) {
    return filterClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventStart value)? started,
    TResult Function(ProgramEventClicked value)? clicked,
    TResult Function(ProgramEventFilterClicked value)? filterClicked,
    required TResult orElse(),
  }) {
    if (filterClicked != null) {
      return filterClicked(this);
    }
    return orElse();
  }
}

abstract class ProgramEventFilterClicked implements ProgramEvent {
  const factory ProgramEventFilterClicked({required final String labelName}) =
      _$ProgramEventFilterClickedImpl;

  String get labelName;
  @JsonKey(ignore: true)
  _$$ProgramEventFilterClickedImplCopyWith<_$ProgramEventFilterClickedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProgramState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programs) loadedSuccess,
    required TResult Function() programEmpty,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programs)? loadedSuccess,
    TResult? Function()? programEmpty,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programs)? loadedSuccess,
    TResult Function()? programEmpty,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramStateInital value) initial,
    required TResult Function(ProgramStateLoading value) loading,
    required TResult Function(ProgramStateLoadedSuccess value) loadedSuccess,
    required TResult Function(ProgramStateEmpty value) programEmpty,
    required TResult Function(ProgramStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInital value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(ProgramStateEmpty value)? programEmpty,
    TResult? Function(ProgramStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInital value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(ProgramStateEmpty value)? programEmpty,
    TResult Function(ProgramStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramStateCopyWith<$Res> {
  factory $ProgramStateCopyWith(
          ProgramState value, $Res Function(ProgramState) then) =
      _$ProgramStateCopyWithImpl<$Res, ProgramState>;
}

/// @nodoc
class _$ProgramStateCopyWithImpl<$Res, $Val extends ProgramState>
    implements $ProgramStateCopyWith<$Res> {
  _$ProgramStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProgramStateInitalImplCopyWith<$Res> {
  factory _$$ProgramStateInitalImplCopyWith(_$ProgramStateInitalImpl value,
          $Res Function(_$ProgramStateInitalImpl) then) =
      __$$ProgramStateInitalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramStateInitalImplCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$ProgramStateInitalImpl>
    implements _$$ProgramStateInitalImplCopyWith<$Res> {
  __$$ProgramStateInitalImplCopyWithImpl(_$ProgramStateInitalImpl _value,
      $Res Function(_$ProgramStateInitalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramStateInitalImpl implements ProgramStateInital {
  const _$ProgramStateInitalImpl();

  @override
  String toString() {
    return 'ProgramState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProgramStateInitalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programs) loadedSuccess,
    required TResult Function() programEmpty,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programs)? loadedSuccess,
    TResult? Function()? programEmpty,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programs)? loadedSuccess,
    TResult Function()? programEmpty,
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
    required TResult Function(ProgramStateInital value) initial,
    required TResult Function(ProgramStateLoading value) loading,
    required TResult Function(ProgramStateLoadedSuccess value) loadedSuccess,
    required TResult Function(ProgramStateEmpty value) programEmpty,
    required TResult Function(ProgramStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInital value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(ProgramStateEmpty value)? programEmpty,
    TResult? Function(ProgramStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInital value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(ProgramStateEmpty value)? programEmpty,
    TResult Function(ProgramStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProgramStateInital implements ProgramState {
  const factory ProgramStateInital() = _$ProgramStateInitalImpl;
}

/// @nodoc
abstract class _$$ProgramStateLoadingImplCopyWith<$Res> {
  factory _$$ProgramStateLoadingImplCopyWith(_$ProgramStateLoadingImpl value,
          $Res Function(_$ProgramStateLoadingImpl) then) =
      __$$ProgramStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramStateLoadingImplCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$ProgramStateLoadingImpl>
    implements _$$ProgramStateLoadingImplCopyWith<$Res> {
  __$$ProgramStateLoadingImplCopyWithImpl(_$ProgramStateLoadingImpl _value,
      $Res Function(_$ProgramStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramStateLoadingImpl implements ProgramStateLoading {
  const _$ProgramStateLoadingImpl();

  @override
  String toString() {
    return 'ProgramState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programs) loadedSuccess,
    required TResult Function() programEmpty,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programs)? loadedSuccess,
    TResult? Function()? programEmpty,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programs)? loadedSuccess,
    TResult Function()? programEmpty,
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
    required TResult Function(ProgramStateInital value) initial,
    required TResult Function(ProgramStateLoading value) loading,
    required TResult Function(ProgramStateLoadedSuccess value) loadedSuccess,
    required TResult Function(ProgramStateEmpty value) programEmpty,
    required TResult Function(ProgramStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInital value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(ProgramStateEmpty value)? programEmpty,
    TResult? Function(ProgramStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInital value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(ProgramStateEmpty value)? programEmpty,
    TResult Function(ProgramStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProgramStateLoading implements ProgramState {
  const factory ProgramStateLoading() = _$ProgramStateLoadingImpl;
}

/// @nodoc
abstract class _$$ProgramStateLoadedSuccessImplCopyWith<$Res> {
  factory _$$ProgramStateLoadedSuccessImplCopyWith(
          _$ProgramStateLoadedSuccessImpl value,
          $Res Function(_$ProgramStateLoadedSuccessImpl) then) =
      __$$ProgramStateLoadedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Program> programs});
}

/// @nodoc
class __$$ProgramStateLoadedSuccessImplCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$ProgramStateLoadedSuccessImpl>
    implements _$$ProgramStateLoadedSuccessImplCopyWith<$Res> {
  __$$ProgramStateLoadedSuccessImplCopyWithImpl(
      _$ProgramStateLoadedSuccessImpl _value,
      $Res Function(_$ProgramStateLoadedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programs = null,
  }) {
    return _then(_$ProgramStateLoadedSuccessImpl(
      programs: null == programs
          ? _value._programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<Program>,
    ));
  }
}

/// @nodoc

class _$ProgramStateLoadedSuccessImpl implements ProgramStateLoadedSuccess {
  const _$ProgramStateLoadedSuccessImpl({required final List<Program> programs})
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
    return 'ProgramState.loadedSuccess(programs: $programs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStateLoadedSuccessImpl &&
            const DeepCollectionEquality().equals(other._programs, _programs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_programs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramStateLoadedSuccessImplCopyWith<_$ProgramStateLoadedSuccessImpl>
      get copyWith => __$$ProgramStateLoadedSuccessImplCopyWithImpl<
          _$ProgramStateLoadedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programs) loadedSuccess,
    required TResult Function() programEmpty,
    required TResult Function() error,
  }) {
    return loadedSuccess(programs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programs)? loadedSuccess,
    TResult? Function()? programEmpty,
    TResult? Function()? error,
  }) {
    return loadedSuccess?.call(programs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programs)? loadedSuccess,
    TResult Function()? programEmpty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(programs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramStateInital value) initial,
    required TResult Function(ProgramStateLoading value) loading,
    required TResult Function(ProgramStateLoadedSuccess value) loadedSuccess,
    required TResult Function(ProgramStateEmpty value) programEmpty,
    required TResult Function(ProgramStateError value) error,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInital value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(ProgramStateEmpty value)? programEmpty,
    TResult? Function(ProgramStateError value)? error,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInital value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(ProgramStateEmpty value)? programEmpty,
    TResult Function(ProgramStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class ProgramStateLoadedSuccess implements ProgramState {
  const factory ProgramStateLoadedSuccess(
          {required final List<Program> programs}) =
      _$ProgramStateLoadedSuccessImpl;

  List<Program> get programs;
  @JsonKey(ignore: true)
  _$$ProgramStateLoadedSuccessImplCopyWith<_$ProgramStateLoadedSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramStateEmptyImplCopyWith<$Res> {
  factory _$$ProgramStateEmptyImplCopyWith(_$ProgramStateEmptyImpl value,
          $Res Function(_$ProgramStateEmptyImpl) then) =
      __$$ProgramStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramStateEmptyImplCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$ProgramStateEmptyImpl>
    implements _$$ProgramStateEmptyImplCopyWith<$Res> {
  __$$ProgramStateEmptyImplCopyWithImpl(_$ProgramStateEmptyImpl _value,
      $Res Function(_$ProgramStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramStateEmptyImpl implements ProgramStateEmpty {
  const _$ProgramStateEmptyImpl();

  @override
  String toString() {
    return 'ProgramState.programEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProgramStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programs) loadedSuccess,
    required TResult Function() programEmpty,
    required TResult Function() error,
  }) {
    return programEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programs)? loadedSuccess,
    TResult? Function()? programEmpty,
    TResult? Function()? error,
  }) {
    return programEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programs)? loadedSuccess,
    TResult Function()? programEmpty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (programEmpty != null) {
      return programEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramStateInital value) initial,
    required TResult Function(ProgramStateLoading value) loading,
    required TResult Function(ProgramStateLoadedSuccess value) loadedSuccess,
    required TResult Function(ProgramStateEmpty value) programEmpty,
    required TResult Function(ProgramStateError value) error,
  }) {
    return programEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInital value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(ProgramStateEmpty value)? programEmpty,
    TResult? Function(ProgramStateError value)? error,
  }) {
    return programEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInital value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(ProgramStateEmpty value)? programEmpty,
    TResult Function(ProgramStateError value)? error,
    required TResult orElse(),
  }) {
    if (programEmpty != null) {
      return programEmpty(this);
    }
    return orElse();
  }
}

abstract class ProgramStateEmpty implements ProgramState {
  const factory ProgramStateEmpty() = _$ProgramStateEmptyImpl;
}

/// @nodoc
abstract class _$$ProgramStateErrorImplCopyWith<$Res> {
  factory _$$ProgramStateErrorImplCopyWith(_$ProgramStateErrorImpl value,
          $Res Function(_$ProgramStateErrorImpl) then) =
      __$$ProgramStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramStateErrorImplCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$ProgramStateErrorImpl>
    implements _$$ProgramStateErrorImplCopyWith<$Res> {
  __$$ProgramStateErrorImplCopyWithImpl(_$ProgramStateErrorImpl _value,
      $Res Function(_$ProgramStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramStateErrorImpl implements ProgramStateError {
  const _$ProgramStateErrorImpl();

  @override
  String toString() {
    return 'ProgramState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProgramStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Program> programs) loadedSuccess,
    required TResult Function() programEmpty,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programs)? loadedSuccess,
    TResult? Function()? programEmpty,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programs)? loadedSuccess,
    TResult Function()? programEmpty,
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
    required TResult Function(ProgramStateInital value) initial,
    required TResult Function(ProgramStateLoading value) loading,
    required TResult Function(ProgramStateLoadedSuccess value) loadedSuccess,
    required TResult Function(ProgramStateEmpty value) programEmpty,
    required TResult Function(ProgramStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInital value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(ProgramStateEmpty value)? programEmpty,
    TResult? Function(ProgramStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInital value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(ProgramStateEmpty value)? programEmpty,
    TResult Function(ProgramStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProgramStateError implements ProgramState {
  const factory ProgramStateError() = _$ProgramStateErrorImpl;
}
