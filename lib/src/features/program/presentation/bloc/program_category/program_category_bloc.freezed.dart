// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProgramCategoryEvent {
  List<Object>? get labels => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Label>? labels) started,
    required TResult Function(List<ProgramFilter> labels) onCategoryTapped,
    required TResult Function(
            List<ProgramFilter> labels, ProgramFilter currentCategory)
        onAddNewCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Label>? labels)? started,
    TResult? Function(List<ProgramFilter> labels)? onCategoryTapped,
    TResult? Function(
            List<ProgramFilter> labels, ProgramFilter currentCategory)?
        onAddNewCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Label>? labels)? started,
    TResult Function(List<ProgramFilter> labels)? onCategoryTapped,
    TResult Function(List<ProgramFilter> labels, ProgramFilter currentCategory)?
        onAddNewCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramCategoryEventStarted value) started,
    required TResult Function(ProgramCategoryEventOnCategoryTapped value)
        onCategoryTapped,
    required TResult Function(ProgramCategoryEventOnAddNewCategory value)
        onAddNewCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramCategoryEventStarted value)? started,
    TResult? Function(ProgramCategoryEventOnCategoryTapped value)?
        onCategoryTapped,
    TResult? Function(ProgramCategoryEventOnAddNewCategory value)?
        onAddNewCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramCategoryEventStarted value)? started,
    TResult Function(ProgramCategoryEventOnCategoryTapped value)?
        onCategoryTapped,
    TResult Function(ProgramCategoryEventOnAddNewCategory value)?
        onAddNewCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramCategoryEventCopyWith<$Res> {
  factory $ProgramCategoryEventCopyWith(ProgramCategoryEvent value,
          $Res Function(ProgramCategoryEvent) then) =
      _$ProgramCategoryEventCopyWithImpl<$Res, ProgramCategoryEvent>;
}

/// @nodoc
class _$ProgramCategoryEventCopyWithImpl<$Res,
        $Val extends ProgramCategoryEvent>
    implements $ProgramCategoryEventCopyWith<$Res> {
  _$ProgramCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProgramCategoryEventStartedImplCopyWith<$Res> {
  factory _$$ProgramCategoryEventStartedImplCopyWith(
          _$ProgramCategoryEventStartedImpl value,
          $Res Function(_$ProgramCategoryEventStartedImpl) then) =
      __$$ProgramCategoryEventStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Label>? labels});
}

/// @nodoc
class __$$ProgramCategoryEventStartedImplCopyWithImpl<$Res>
    extends _$ProgramCategoryEventCopyWithImpl<$Res,
        _$ProgramCategoryEventStartedImpl>
    implements _$$ProgramCategoryEventStartedImplCopyWith<$Res> {
  __$$ProgramCategoryEventStartedImplCopyWithImpl(
      _$ProgramCategoryEventStartedImpl _value,
      $Res Function(_$ProgramCategoryEventStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labels = freezed,
  }) {
    return _then(_$ProgramCategoryEventStartedImpl(
      labels: freezed == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<Label>?,
    ));
  }
}

/// @nodoc

class _$ProgramCategoryEventStartedImpl implements ProgramCategoryEventStarted {
  const _$ProgramCategoryEventStartedImpl({final List<Label>? labels})
      : _labels = labels;

  final List<Label>? _labels;
  @override
  List<Label>? get labels {
    final value = _labels;
    if (value == null) return null;
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProgramCategoryEvent.started(labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramCategoryEventStartedImpl &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramCategoryEventStartedImplCopyWith<_$ProgramCategoryEventStartedImpl>
      get copyWith => __$$ProgramCategoryEventStartedImplCopyWithImpl<
          _$ProgramCategoryEventStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Label>? labels) started,
    required TResult Function(List<ProgramFilter> labels) onCategoryTapped,
    required TResult Function(
            List<ProgramFilter> labels, ProgramFilter currentCategory)
        onAddNewCategory,
  }) {
    return started(labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Label>? labels)? started,
    TResult? Function(List<ProgramFilter> labels)? onCategoryTapped,
    TResult? Function(
            List<ProgramFilter> labels, ProgramFilter currentCategory)?
        onAddNewCategory,
  }) {
    return started?.call(labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Label>? labels)? started,
    TResult Function(List<ProgramFilter> labels)? onCategoryTapped,
    TResult Function(List<ProgramFilter> labels, ProgramFilter currentCategory)?
        onAddNewCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(labels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramCategoryEventStarted value) started,
    required TResult Function(ProgramCategoryEventOnCategoryTapped value)
        onCategoryTapped,
    required TResult Function(ProgramCategoryEventOnAddNewCategory value)
        onAddNewCategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramCategoryEventStarted value)? started,
    TResult? Function(ProgramCategoryEventOnCategoryTapped value)?
        onCategoryTapped,
    TResult? Function(ProgramCategoryEventOnAddNewCategory value)?
        onAddNewCategory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramCategoryEventStarted value)? started,
    TResult Function(ProgramCategoryEventOnCategoryTapped value)?
        onCategoryTapped,
    TResult Function(ProgramCategoryEventOnAddNewCategory value)?
        onAddNewCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class ProgramCategoryEventStarted implements ProgramCategoryEvent {
  const factory ProgramCategoryEventStarted({final List<Label>? labels}) =
      _$ProgramCategoryEventStartedImpl;

  @override
  List<Label>? get labels;
  @JsonKey(ignore: true)
  _$$ProgramCategoryEventStartedImplCopyWith<_$ProgramCategoryEventStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramCategoryEventOnCategoryTappedImplCopyWith<$Res> {
  factory _$$ProgramCategoryEventOnCategoryTappedImplCopyWith(
          _$ProgramCategoryEventOnCategoryTappedImpl value,
          $Res Function(_$ProgramCategoryEventOnCategoryTappedImpl) then) =
      __$$ProgramCategoryEventOnCategoryTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProgramFilter> labels});
}

/// @nodoc
class __$$ProgramCategoryEventOnCategoryTappedImplCopyWithImpl<$Res>
    extends _$ProgramCategoryEventCopyWithImpl<$Res,
        _$ProgramCategoryEventOnCategoryTappedImpl>
    implements _$$ProgramCategoryEventOnCategoryTappedImplCopyWith<$Res> {
  __$$ProgramCategoryEventOnCategoryTappedImplCopyWithImpl(
      _$ProgramCategoryEventOnCategoryTappedImpl _value,
      $Res Function(_$ProgramCategoryEventOnCategoryTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labels = null,
  }) {
    return _then(_$ProgramCategoryEventOnCategoryTappedImpl(
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<ProgramFilter>,
    ));
  }
}

/// @nodoc

class _$ProgramCategoryEventOnCategoryTappedImpl
    implements ProgramCategoryEventOnCategoryTapped {
  const _$ProgramCategoryEventOnCategoryTappedImpl(
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
    return 'ProgramCategoryEvent.onCategoryTapped(labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramCategoryEventOnCategoryTappedImpl &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramCategoryEventOnCategoryTappedImplCopyWith<
          _$ProgramCategoryEventOnCategoryTappedImpl>
      get copyWith => __$$ProgramCategoryEventOnCategoryTappedImplCopyWithImpl<
          _$ProgramCategoryEventOnCategoryTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Label>? labels) started,
    required TResult Function(List<ProgramFilter> labels) onCategoryTapped,
    required TResult Function(
            List<ProgramFilter> labels, ProgramFilter currentCategory)
        onAddNewCategory,
  }) {
    return onCategoryTapped(labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Label>? labels)? started,
    TResult? Function(List<ProgramFilter> labels)? onCategoryTapped,
    TResult? Function(
            List<ProgramFilter> labels, ProgramFilter currentCategory)?
        onAddNewCategory,
  }) {
    return onCategoryTapped?.call(labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Label>? labels)? started,
    TResult Function(List<ProgramFilter> labels)? onCategoryTapped,
    TResult Function(List<ProgramFilter> labels, ProgramFilter currentCategory)?
        onAddNewCategory,
    required TResult orElse(),
  }) {
    if (onCategoryTapped != null) {
      return onCategoryTapped(labels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramCategoryEventStarted value) started,
    required TResult Function(ProgramCategoryEventOnCategoryTapped value)
        onCategoryTapped,
    required TResult Function(ProgramCategoryEventOnAddNewCategory value)
        onAddNewCategory,
  }) {
    return onCategoryTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramCategoryEventStarted value)? started,
    TResult? Function(ProgramCategoryEventOnCategoryTapped value)?
        onCategoryTapped,
    TResult? Function(ProgramCategoryEventOnAddNewCategory value)?
        onAddNewCategory,
  }) {
    return onCategoryTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramCategoryEventStarted value)? started,
    TResult Function(ProgramCategoryEventOnCategoryTapped value)?
        onCategoryTapped,
    TResult Function(ProgramCategoryEventOnAddNewCategory value)?
        onAddNewCategory,
    required TResult orElse(),
  }) {
    if (onCategoryTapped != null) {
      return onCategoryTapped(this);
    }
    return orElse();
  }
}

abstract class ProgramCategoryEventOnCategoryTapped
    implements ProgramCategoryEvent {
  const factory ProgramCategoryEventOnCategoryTapped(
          {required final List<ProgramFilter> labels}) =
      _$ProgramCategoryEventOnCategoryTappedImpl;

  @override
  List<ProgramFilter> get labels;
  @JsonKey(ignore: true)
  _$$ProgramCategoryEventOnCategoryTappedImplCopyWith<
          _$ProgramCategoryEventOnCategoryTappedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramCategoryEventOnAddNewCategoryImplCopyWith<$Res> {
  factory _$$ProgramCategoryEventOnAddNewCategoryImplCopyWith(
          _$ProgramCategoryEventOnAddNewCategoryImpl value,
          $Res Function(_$ProgramCategoryEventOnAddNewCategoryImpl) then) =
      __$$ProgramCategoryEventOnAddNewCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProgramFilter> labels, ProgramFilter currentCategory});

  $ProgramFilterCopyWith<$Res> get currentCategory;
}

/// @nodoc
class __$$ProgramCategoryEventOnAddNewCategoryImplCopyWithImpl<$Res>
    extends _$ProgramCategoryEventCopyWithImpl<$Res,
        _$ProgramCategoryEventOnAddNewCategoryImpl>
    implements _$$ProgramCategoryEventOnAddNewCategoryImplCopyWith<$Res> {
  __$$ProgramCategoryEventOnAddNewCategoryImplCopyWithImpl(
      _$ProgramCategoryEventOnAddNewCategoryImpl _value,
      $Res Function(_$ProgramCategoryEventOnAddNewCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labels = null,
    Object? currentCategory = null,
  }) {
    return _then(_$ProgramCategoryEventOnAddNewCategoryImpl(
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<ProgramFilter>,
      currentCategory: null == currentCategory
          ? _value.currentCategory
          : currentCategory // ignore: cast_nullable_to_non_nullable
              as ProgramFilter,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramFilterCopyWith<$Res> get currentCategory {
    return $ProgramFilterCopyWith<$Res>(_value.currentCategory, (value) {
      return _then(_value.copyWith(currentCategory: value));
    });
  }
}

/// @nodoc

class _$ProgramCategoryEventOnAddNewCategoryImpl
    implements ProgramCategoryEventOnAddNewCategory {
  const _$ProgramCategoryEventOnAddNewCategoryImpl(
      {required final List<ProgramFilter> labels,
      required this.currentCategory})
      : _labels = labels;

  final List<ProgramFilter> _labels;
  @override
  List<ProgramFilter> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  final ProgramFilter currentCategory;

  @override
  String toString() {
    return 'ProgramCategoryEvent.onAddNewCategory(labels: $labels, currentCategory: $currentCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramCategoryEventOnAddNewCategoryImpl &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            (identical(other.currentCategory, currentCategory) ||
                other.currentCategory == currentCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_labels), currentCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramCategoryEventOnAddNewCategoryImplCopyWith<
          _$ProgramCategoryEventOnAddNewCategoryImpl>
      get copyWith => __$$ProgramCategoryEventOnAddNewCategoryImplCopyWithImpl<
          _$ProgramCategoryEventOnAddNewCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Label>? labels) started,
    required TResult Function(List<ProgramFilter> labels) onCategoryTapped,
    required TResult Function(
            List<ProgramFilter> labels, ProgramFilter currentCategory)
        onAddNewCategory,
  }) {
    return onAddNewCategory(labels, currentCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Label>? labels)? started,
    TResult? Function(List<ProgramFilter> labels)? onCategoryTapped,
    TResult? Function(
            List<ProgramFilter> labels, ProgramFilter currentCategory)?
        onAddNewCategory,
  }) {
    return onAddNewCategory?.call(labels, currentCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Label>? labels)? started,
    TResult Function(List<ProgramFilter> labels)? onCategoryTapped,
    TResult Function(List<ProgramFilter> labels, ProgramFilter currentCategory)?
        onAddNewCategory,
    required TResult orElse(),
  }) {
    if (onAddNewCategory != null) {
      return onAddNewCategory(labels, currentCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramCategoryEventStarted value) started,
    required TResult Function(ProgramCategoryEventOnCategoryTapped value)
        onCategoryTapped,
    required TResult Function(ProgramCategoryEventOnAddNewCategory value)
        onAddNewCategory,
  }) {
    return onAddNewCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramCategoryEventStarted value)? started,
    TResult? Function(ProgramCategoryEventOnCategoryTapped value)?
        onCategoryTapped,
    TResult? Function(ProgramCategoryEventOnAddNewCategory value)?
        onAddNewCategory,
  }) {
    return onAddNewCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramCategoryEventStarted value)? started,
    TResult Function(ProgramCategoryEventOnCategoryTapped value)?
        onCategoryTapped,
    TResult Function(ProgramCategoryEventOnAddNewCategory value)?
        onAddNewCategory,
    required TResult orElse(),
  }) {
    if (onAddNewCategory != null) {
      return onAddNewCategory(this);
    }
    return orElse();
  }
}

abstract class ProgramCategoryEventOnAddNewCategory
    implements ProgramCategoryEvent {
  const factory ProgramCategoryEventOnAddNewCategory(
          {required final List<ProgramFilter> labels,
          required final ProgramFilter currentCategory}) =
      _$ProgramCategoryEventOnAddNewCategoryImpl;

  @override
  List<ProgramFilter> get labels;
  ProgramFilter get currentCategory;
  @JsonKey(ignore: true)
  _$$ProgramCategoryEventOnAddNewCategoryImplCopyWith<
          _$ProgramCategoryEventOnAddNewCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProgramCategoryState {
  List<ProgramFilter> get labels => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProgramFilter> labels) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProgramFilter> labels)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProgramFilter> labels)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramCategoryStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramCategoryStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramCategoryStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgramCategoryStateCopyWith<ProgramCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramCategoryStateCopyWith<$Res> {
  factory $ProgramCategoryStateCopyWith(ProgramCategoryState value,
          $Res Function(ProgramCategoryState) then) =
      _$ProgramCategoryStateCopyWithImpl<$Res, ProgramCategoryState>;
  @useResult
  $Res call({List<ProgramFilter> labels});
}

/// @nodoc
class _$ProgramCategoryStateCopyWithImpl<$Res,
        $Val extends ProgramCategoryState>
    implements $ProgramCategoryStateCopyWith<$Res> {
  _$ProgramCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labels = null,
  }) {
    return _then(_value.copyWith(
      labels: null == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<ProgramFilter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramCategoryStateSuccessImplCopyWith<$Res>
    implements $ProgramCategoryStateCopyWith<$Res> {
  factory _$$ProgramCategoryStateSuccessImplCopyWith(
          _$ProgramCategoryStateSuccessImpl value,
          $Res Function(_$ProgramCategoryStateSuccessImpl) then) =
      __$$ProgramCategoryStateSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProgramFilter> labels});
}

/// @nodoc
class __$$ProgramCategoryStateSuccessImplCopyWithImpl<$Res>
    extends _$ProgramCategoryStateCopyWithImpl<$Res,
        _$ProgramCategoryStateSuccessImpl>
    implements _$$ProgramCategoryStateSuccessImplCopyWith<$Res> {
  __$$ProgramCategoryStateSuccessImplCopyWithImpl(
      _$ProgramCategoryStateSuccessImpl _value,
      $Res Function(_$ProgramCategoryStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labels = null,
  }) {
    return _then(_$ProgramCategoryStateSuccessImpl(
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<ProgramFilter>,
    ));
  }
}

/// @nodoc

class _$ProgramCategoryStateSuccessImpl implements ProgramCategoryStateSuccess {
  const _$ProgramCategoryStateSuccessImpl(
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
    return 'ProgramCategoryState.success(labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramCategoryStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramCategoryStateSuccessImplCopyWith<_$ProgramCategoryStateSuccessImpl>
      get copyWith => __$$ProgramCategoryStateSuccessImplCopyWithImpl<
          _$ProgramCategoryStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProgramFilter> labels) success,
  }) {
    return success(labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProgramFilter> labels)? success,
  }) {
    return success?.call(labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProgramFilter> labels)? success,
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
    required TResult Function(ProgramCategoryStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramCategoryStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramCategoryStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProgramCategoryStateSuccess implements ProgramCategoryState {
  const factory ProgramCategoryStateSuccess(
          {required final List<ProgramFilter> labels}) =
      _$ProgramCategoryStateSuccessImpl;

  @override
  List<ProgramFilter> get labels;
  @override
  @JsonKey(ignore: true)
  _$$ProgramCategoryStateSuccessImplCopyWith<_$ProgramCategoryStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
