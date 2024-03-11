// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_program_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterProgramEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProgramFilter> labels, int selectedFilter)
        clicked,
    required TResult Function() hided,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProgramFilter> labels, int selectedFilter)? clicked,
    TResult? Function()? hided,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProgramFilter> labels, int selectedFilter)? clicked,
    TResult Function()? hided,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterProgramStarted value) started,
    required TResult Function(FilterProgramClicked value) clicked,
    required TResult Function(FilterProgramHided value) hided,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterProgramStarted value)? started,
    TResult? Function(FilterProgramClicked value)? clicked,
    TResult? Function(FilterProgramHided value)? hided,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterProgramStarted value)? started,
    TResult Function(FilterProgramClicked value)? clicked,
    TResult Function(FilterProgramHided value)? hided,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterProgramEventCopyWith<$Res> {
  factory $FilterProgramEventCopyWith(
          FilterProgramEvent value, $Res Function(FilterProgramEvent) then) =
      _$FilterProgramEventCopyWithImpl<$Res, FilterProgramEvent>;
}

/// @nodoc
class _$FilterProgramEventCopyWithImpl<$Res, $Val extends FilterProgramEvent>
    implements $FilterProgramEventCopyWith<$Res> {
  _$FilterProgramEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FilterProgramStartedImplCopyWith<$Res> {
  factory _$$FilterProgramStartedImplCopyWith(_$FilterProgramStartedImpl value,
          $Res Function(_$FilterProgramStartedImpl) then) =
      __$$FilterProgramStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterProgramStartedImplCopyWithImpl<$Res>
    extends _$FilterProgramEventCopyWithImpl<$Res, _$FilterProgramStartedImpl>
    implements _$$FilterProgramStartedImplCopyWith<$Res> {
  __$$FilterProgramStartedImplCopyWithImpl(_$FilterProgramStartedImpl _value,
      $Res Function(_$FilterProgramStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FilterProgramStartedImpl implements FilterProgramStarted {
  const _$FilterProgramStartedImpl();

  @override
  String toString() {
    return 'FilterProgramEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterProgramStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProgramFilter> labels, int selectedFilter)
        clicked,
    required TResult Function() hided,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProgramFilter> labels, int selectedFilter)? clicked,
    TResult? Function()? hided,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProgramFilter> labels, int selectedFilter)? clicked,
    TResult Function()? hided,
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
    required TResult Function(FilterProgramStarted value) started,
    required TResult Function(FilterProgramClicked value) clicked,
    required TResult Function(FilterProgramHided value) hided,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterProgramStarted value)? started,
    TResult? Function(FilterProgramClicked value)? clicked,
    TResult? Function(FilterProgramHided value)? hided,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterProgramStarted value)? started,
    TResult Function(FilterProgramClicked value)? clicked,
    TResult Function(FilterProgramHided value)? hided,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class FilterProgramStarted implements FilterProgramEvent {
  const factory FilterProgramStarted() = _$FilterProgramStartedImpl;
}

/// @nodoc
abstract class _$$FilterProgramClickedImplCopyWith<$Res> {
  factory _$$FilterProgramClickedImplCopyWith(_$FilterProgramClickedImpl value,
          $Res Function(_$FilterProgramClickedImpl) then) =
      __$$FilterProgramClickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProgramFilter> labels, int selectedFilter});
}

/// @nodoc
class __$$FilterProgramClickedImplCopyWithImpl<$Res>
    extends _$FilterProgramEventCopyWithImpl<$Res, _$FilterProgramClickedImpl>
    implements _$$FilterProgramClickedImplCopyWith<$Res> {
  __$$FilterProgramClickedImplCopyWithImpl(_$FilterProgramClickedImpl _value,
      $Res Function(_$FilterProgramClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labels = null,
    Object? selectedFilter = null,
  }) {
    return _then(_$FilterProgramClickedImpl(
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<ProgramFilter>,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterProgramClickedImpl implements FilterProgramClicked {
  const _$FilterProgramClickedImpl(
      {required final List<ProgramFilter> labels, required this.selectedFilter})
      : _labels = labels;

  final List<ProgramFilter> _labels;
  @override
  List<ProgramFilter> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  final int selectedFilter;

  @override
  String toString() {
    return 'FilterProgramEvent.clicked(labels: $labels, selectedFilter: $selectedFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterProgramClickedImpl &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            (identical(other.selectedFilter, selectedFilter) ||
                other.selectedFilter == selectedFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_labels), selectedFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterProgramClickedImplCopyWith<_$FilterProgramClickedImpl>
      get copyWith =>
          __$$FilterProgramClickedImplCopyWithImpl<_$FilterProgramClickedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProgramFilter> labels, int selectedFilter)
        clicked,
    required TResult Function() hided,
  }) {
    return clicked(labels, selectedFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProgramFilter> labels, int selectedFilter)? clicked,
    TResult? Function()? hided,
  }) {
    return clicked?.call(labels, selectedFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProgramFilter> labels, int selectedFilter)? clicked,
    TResult Function()? hided,
    required TResult orElse(),
  }) {
    if (clicked != null) {
      return clicked(labels, selectedFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterProgramStarted value) started,
    required TResult Function(FilterProgramClicked value) clicked,
    required TResult Function(FilterProgramHided value) hided,
  }) {
    return clicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterProgramStarted value)? started,
    TResult? Function(FilterProgramClicked value)? clicked,
    TResult? Function(FilterProgramHided value)? hided,
  }) {
    return clicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterProgramStarted value)? started,
    TResult Function(FilterProgramClicked value)? clicked,
    TResult Function(FilterProgramHided value)? hided,
    required TResult orElse(),
  }) {
    if (clicked != null) {
      return clicked(this);
    }
    return orElse();
  }
}

abstract class FilterProgramClicked implements FilterProgramEvent {
  const factory FilterProgramClicked(
      {required final List<ProgramFilter> labels,
      required final int selectedFilter}) = _$FilterProgramClickedImpl;

  List<ProgramFilter> get labels;
  int get selectedFilter;
  @JsonKey(ignore: true)
  _$$FilterProgramClickedImplCopyWith<_$FilterProgramClickedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterProgramHidedImplCopyWith<$Res> {
  factory _$$FilterProgramHidedImplCopyWith(_$FilterProgramHidedImpl value,
          $Res Function(_$FilterProgramHidedImpl) then) =
      __$$FilterProgramHidedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterProgramHidedImplCopyWithImpl<$Res>
    extends _$FilterProgramEventCopyWithImpl<$Res, _$FilterProgramHidedImpl>
    implements _$$FilterProgramHidedImplCopyWith<$Res> {
  __$$FilterProgramHidedImplCopyWithImpl(_$FilterProgramHidedImpl _value,
      $Res Function(_$FilterProgramHidedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FilterProgramHidedImpl implements FilterProgramHided {
  const _$FilterProgramHidedImpl();

  @override
  String toString() {
    return 'FilterProgramEvent.hided()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilterProgramHidedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProgramFilter> labels, int selectedFilter)
        clicked,
    required TResult Function() hided,
  }) {
    return hided();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProgramFilter> labels, int selectedFilter)? clicked,
    TResult? Function()? hided,
  }) {
    return hided?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProgramFilter> labels, int selectedFilter)? clicked,
    TResult Function()? hided,
    required TResult orElse(),
  }) {
    if (hided != null) {
      return hided();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterProgramStarted value) started,
    required TResult Function(FilterProgramClicked value) clicked,
    required TResult Function(FilterProgramHided value) hided,
  }) {
    return hided(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterProgramStarted value)? started,
    TResult? Function(FilterProgramClicked value)? clicked,
    TResult? Function(FilterProgramHided value)? hided,
  }) {
    return hided?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterProgramStarted value)? started,
    TResult Function(FilterProgramClicked value)? clicked,
    TResult Function(FilterProgramHided value)? hided,
    required TResult orElse(),
  }) {
    if (hided != null) {
      return hided(this);
    }
    return orElse();
  }
}

abstract class FilterProgramHided implements FilterProgramEvent {
  const factory FilterProgramHided() = _$FilterProgramHidedImpl;
}

/// @nodoc
mixin _$FilterProgramState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramFilter> labels, int selectedFilter)
        loadedSuccess,
    required TResult Function() hide,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgramFilter> labels, int selectedFilter)?
        loadedSuccess,
    TResult? Function()? hide,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgramFilter> labels, int selectedFilter)?
        loadedSuccess,
    TResult Function()? hide,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterProgramStateInitial value) initial,
    required TResult Function(FilterProgramStateLoading value) loading,
    required TResult Function(FilterProgramStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(FilterProgramStateHide value) hide,
    required TResult Function(FilterProgramStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterProgramStateInitial value)? initial,
    TResult? Function(FilterProgramStateLoading value)? loading,
    TResult? Function(FilterProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(FilterProgramStateHide value)? hide,
    TResult? Function(FilterProgramStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterProgramStateInitial value)? initial,
    TResult Function(FilterProgramStateLoading value)? loading,
    TResult Function(FilterProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(FilterProgramStateHide value)? hide,
    TResult Function(FilterProgramStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterProgramStateCopyWith<$Res> {
  factory $FilterProgramStateCopyWith(
          FilterProgramState value, $Res Function(FilterProgramState) then) =
      _$FilterProgramStateCopyWithImpl<$Res, FilterProgramState>;
}

/// @nodoc
class _$FilterProgramStateCopyWithImpl<$Res, $Val extends FilterProgramState>
    implements $FilterProgramStateCopyWith<$Res> {
  _$FilterProgramStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FilterProgramStateInitialImplCopyWith<$Res> {
  factory _$$FilterProgramStateInitialImplCopyWith(
          _$FilterProgramStateInitialImpl value,
          $Res Function(_$FilterProgramStateInitialImpl) then) =
      __$$FilterProgramStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterProgramStateInitialImplCopyWithImpl<$Res>
    extends _$FilterProgramStateCopyWithImpl<$Res,
        _$FilterProgramStateInitialImpl>
    implements _$$FilterProgramStateInitialImplCopyWith<$Res> {
  __$$FilterProgramStateInitialImplCopyWithImpl(
      _$FilterProgramStateInitialImpl _value,
      $Res Function(_$FilterProgramStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FilterProgramStateInitialImpl implements FilterProgramStateInitial {
  const _$FilterProgramStateInitialImpl();

  @override
  String toString() {
    return 'FilterProgramState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterProgramStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramFilter> labels, int selectedFilter)
        loadedSuccess,
    required TResult Function() hide,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgramFilter> labels, int selectedFilter)?
        loadedSuccess,
    TResult? Function()? hide,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgramFilter> labels, int selectedFilter)?
        loadedSuccess,
    TResult Function()? hide,
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
    required TResult Function(FilterProgramStateInitial value) initial,
    required TResult Function(FilterProgramStateLoading value) loading,
    required TResult Function(FilterProgramStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(FilterProgramStateHide value) hide,
    required TResult Function(FilterProgramStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterProgramStateInitial value)? initial,
    TResult? Function(FilterProgramStateLoading value)? loading,
    TResult? Function(FilterProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(FilterProgramStateHide value)? hide,
    TResult? Function(FilterProgramStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterProgramStateInitial value)? initial,
    TResult Function(FilterProgramStateLoading value)? loading,
    TResult Function(FilterProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(FilterProgramStateHide value)? hide,
    TResult Function(FilterProgramStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FilterProgramStateInitial implements FilterProgramState {
  const factory FilterProgramStateInitial() = _$FilterProgramStateInitialImpl;
}

/// @nodoc
abstract class _$$FilterProgramStateLoadingImplCopyWith<$Res> {
  factory _$$FilterProgramStateLoadingImplCopyWith(
          _$FilterProgramStateLoadingImpl value,
          $Res Function(_$FilterProgramStateLoadingImpl) then) =
      __$$FilterProgramStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterProgramStateLoadingImplCopyWithImpl<$Res>
    extends _$FilterProgramStateCopyWithImpl<$Res,
        _$FilterProgramStateLoadingImpl>
    implements _$$FilterProgramStateLoadingImplCopyWith<$Res> {
  __$$FilterProgramStateLoadingImplCopyWithImpl(
      _$FilterProgramStateLoadingImpl _value,
      $Res Function(_$FilterProgramStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FilterProgramStateLoadingImpl implements FilterProgramStateLoading {
  const _$FilterProgramStateLoadingImpl();

  @override
  String toString() {
    return 'FilterProgramState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterProgramStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramFilter> labels, int selectedFilter)
        loadedSuccess,
    required TResult Function() hide,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgramFilter> labels, int selectedFilter)?
        loadedSuccess,
    TResult? Function()? hide,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgramFilter> labels, int selectedFilter)?
        loadedSuccess,
    TResult Function()? hide,
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
    required TResult Function(FilterProgramStateInitial value) initial,
    required TResult Function(FilterProgramStateLoading value) loading,
    required TResult Function(FilterProgramStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(FilterProgramStateHide value) hide,
    required TResult Function(FilterProgramStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterProgramStateInitial value)? initial,
    TResult? Function(FilterProgramStateLoading value)? loading,
    TResult? Function(FilterProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(FilterProgramStateHide value)? hide,
    TResult? Function(FilterProgramStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterProgramStateInitial value)? initial,
    TResult Function(FilterProgramStateLoading value)? loading,
    TResult Function(FilterProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(FilterProgramStateHide value)? hide,
    TResult Function(FilterProgramStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FilterProgramStateLoading implements FilterProgramState {
  const factory FilterProgramStateLoading() = _$FilterProgramStateLoadingImpl;
}

/// @nodoc
abstract class _$$FilterProgramStateLoadedSuccessImplCopyWith<$Res> {
  factory _$$FilterProgramStateLoadedSuccessImplCopyWith(
          _$FilterProgramStateLoadedSuccessImpl value,
          $Res Function(_$FilterProgramStateLoadedSuccessImpl) then) =
      __$$FilterProgramStateLoadedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProgramFilter> labels, int selectedFilter});
}

/// @nodoc
class __$$FilterProgramStateLoadedSuccessImplCopyWithImpl<$Res>
    extends _$FilterProgramStateCopyWithImpl<$Res,
        _$FilterProgramStateLoadedSuccessImpl>
    implements _$$FilterProgramStateLoadedSuccessImplCopyWith<$Res> {
  __$$FilterProgramStateLoadedSuccessImplCopyWithImpl(
      _$FilterProgramStateLoadedSuccessImpl _value,
      $Res Function(_$FilterProgramStateLoadedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labels = null,
    Object? selectedFilter = null,
  }) {
    return _then(_$FilterProgramStateLoadedSuccessImpl(
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<ProgramFilter>,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterProgramStateLoadedSuccessImpl
    implements FilterProgramStateLoadedSuccess {
  const _$FilterProgramStateLoadedSuccessImpl(
      {required final List<ProgramFilter> labels, this.selectedFilter = 0})
      : _labels = labels;

  final List<ProgramFilter> _labels;
  @override
  List<ProgramFilter> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  @JsonKey()
  final int selectedFilter;

  @override
  String toString() {
    return 'FilterProgramState.loadedSuccess(labels: $labels, selectedFilter: $selectedFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterProgramStateLoadedSuccessImpl &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            (identical(other.selectedFilter, selectedFilter) ||
                other.selectedFilter == selectedFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_labels), selectedFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterProgramStateLoadedSuccessImplCopyWith<
          _$FilterProgramStateLoadedSuccessImpl>
      get copyWith => __$$FilterProgramStateLoadedSuccessImplCopyWithImpl<
          _$FilterProgramStateLoadedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramFilter> labels, int selectedFilter)
        loadedSuccess,
    required TResult Function() hide,
    required TResult Function() error,
  }) {
    return loadedSuccess(labels, selectedFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgramFilter> labels, int selectedFilter)?
        loadedSuccess,
    TResult? Function()? hide,
    TResult? Function()? error,
  }) {
    return loadedSuccess?.call(labels, selectedFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgramFilter> labels, int selectedFilter)?
        loadedSuccess,
    TResult Function()? hide,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(labels, selectedFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterProgramStateInitial value) initial,
    required TResult Function(FilterProgramStateLoading value) loading,
    required TResult Function(FilterProgramStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(FilterProgramStateHide value) hide,
    required TResult Function(FilterProgramStateError value) error,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterProgramStateInitial value)? initial,
    TResult? Function(FilterProgramStateLoading value)? loading,
    TResult? Function(FilterProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(FilterProgramStateHide value)? hide,
    TResult? Function(FilterProgramStateError value)? error,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterProgramStateInitial value)? initial,
    TResult Function(FilterProgramStateLoading value)? loading,
    TResult Function(FilterProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(FilterProgramStateHide value)? hide,
    TResult Function(FilterProgramStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class FilterProgramStateLoadedSuccess implements FilterProgramState {
  const factory FilterProgramStateLoadedSuccess(
      {required final List<ProgramFilter> labels,
      final int selectedFilter}) = _$FilterProgramStateLoadedSuccessImpl;

  List<ProgramFilter> get labels;
  int get selectedFilter;
  @JsonKey(ignore: true)
  _$$FilterProgramStateLoadedSuccessImplCopyWith<
          _$FilterProgramStateLoadedSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterProgramStateHideImplCopyWith<$Res> {
  factory _$$FilterProgramStateHideImplCopyWith(
          _$FilterProgramStateHideImpl value,
          $Res Function(_$FilterProgramStateHideImpl) then) =
      __$$FilterProgramStateHideImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterProgramStateHideImplCopyWithImpl<$Res>
    extends _$FilterProgramStateCopyWithImpl<$Res, _$FilterProgramStateHideImpl>
    implements _$$FilterProgramStateHideImplCopyWith<$Res> {
  __$$FilterProgramStateHideImplCopyWithImpl(
      _$FilterProgramStateHideImpl _value,
      $Res Function(_$FilterProgramStateHideImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FilterProgramStateHideImpl implements FilterProgramStateHide {
  const _$FilterProgramStateHideImpl();

  @override
  String toString() {
    return 'FilterProgramState.hide()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterProgramStateHideImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramFilter> labels, int selectedFilter)
        loadedSuccess,
    required TResult Function() hide,
    required TResult Function() error,
  }) {
    return hide();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgramFilter> labels, int selectedFilter)?
        loadedSuccess,
    TResult? Function()? hide,
    TResult? Function()? error,
  }) {
    return hide?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgramFilter> labels, int selectedFilter)?
        loadedSuccess,
    TResult Function()? hide,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (hide != null) {
      return hide();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterProgramStateInitial value) initial,
    required TResult Function(FilterProgramStateLoading value) loading,
    required TResult Function(FilterProgramStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(FilterProgramStateHide value) hide,
    required TResult Function(FilterProgramStateError value) error,
  }) {
    return hide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterProgramStateInitial value)? initial,
    TResult? Function(FilterProgramStateLoading value)? loading,
    TResult? Function(FilterProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(FilterProgramStateHide value)? hide,
    TResult? Function(FilterProgramStateError value)? error,
  }) {
    return hide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterProgramStateInitial value)? initial,
    TResult Function(FilterProgramStateLoading value)? loading,
    TResult Function(FilterProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(FilterProgramStateHide value)? hide,
    TResult Function(FilterProgramStateError value)? error,
    required TResult orElse(),
  }) {
    if (hide != null) {
      return hide(this);
    }
    return orElse();
  }
}

abstract class FilterProgramStateHide implements FilterProgramState {
  const factory FilterProgramStateHide() = _$FilterProgramStateHideImpl;
}

/// @nodoc
abstract class _$$FilterProgramStateErrorImplCopyWith<$Res> {
  factory _$$FilterProgramStateErrorImplCopyWith(
          _$FilterProgramStateErrorImpl value,
          $Res Function(_$FilterProgramStateErrorImpl) then) =
      __$$FilterProgramStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterProgramStateErrorImplCopyWithImpl<$Res>
    extends _$FilterProgramStateCopyWithImpl<$Res,
        _$FilterProgramStateErrorImpl>
    implements _$$FilterProgramStateErrorImplCopyWith<$Res> {
  __$$FilterProgramStateErrorImplCopyWithImpl(
      _$FilterProgramStateErrorImpl _value,
      $Res Function(_$FilterProgramStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FilterProgramStateErrorImpl implements FilterProgramStateError {
  const _$FilterProgramStateErrorImpl();

  @override
  String toString() {
    return 'FilterProgramState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterProgramStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProgramFilter> labels, int selectedFilter)
        loadedSuccess,
    required TResult Function() hide,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProgramFilter> labels, int selectedFilter)?
        loadedSuccess,
    TResult? Function()? hide,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProgramFilter> labels, int selectedFilter)?
        loadedSuccess,
    TResult Function()? hide,
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
    required TResult Function(FilterProgramStateInitial value) initial,
    required TResult Function(FilterProgramStateLoading value) loading,
    required TResult Function(FilterProgramStateLoadedSuccess value)
        loadedSuccess,
    required TResult Function(FilterProgramStateHide value) hide,
    required TResult Function(FilterProgramStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterProgramStateInitial value)? initial,
    TResult? Function(FilterProgramStateLoading value)? loading,
    TResult? Function(FilterProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(FilterProgramStateHide value)? hide,
    TResult? Function(FilterProgramStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterProgramStateInitial value)? initial,
    TResult Function(FilterProgramStateLoading value)? loading,
    TResult Function(FilterProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(FilterProgramStateHide value)? hide,
    TResult Function(FilterProgramStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FilterProgramStateError implements FilterProgramState {
  const factory FilterProgramStateError() = _$FilterProgramStateErrorImpl;
}
