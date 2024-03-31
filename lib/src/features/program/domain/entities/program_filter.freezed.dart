// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProgramFilter {
  int? get labelId => throw _privateConstructorUsedError;
  String? get labelName => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? labelId, String? labelName,
            String? updatedAt, bool? isSelected)
        label,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? labelId, String? labelName, String? updatedAt,
            bool? isSelected)?
        label,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? labelId, String? labelName, String? updatedAt,
            bool? isSelected)?
        label,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramFilterLabel value) label,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramFilterLabel value)? label,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramFilterLabel value)? label,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgramFilterCopyWith<ProgramFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramFilterCopyWith<$Res> {
  factory $ProgramFilterCopyWith(
          ProgramFilter value, $Res Function(ProgramFilter) then) =
      _$ProgramFilterCopyWithImpl<$Res, ProgramFilter>;
  @useResult
  $Res call(
      {int? labelId, String? labelName, String? updatedAt, bool? isSelected});
}

/// @nodoc
class _$ProgramFilterCopyWithImpl<$Res, $Val extends ProgramFilter>
    implements $ProgramFilterCopyWith<$Res> {
  _$ProgramFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelId = freezed,
    Object? labelName = freezed,
    Object? updatedAt = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      labelId: freezed == labelId
          ? _value.labelId
          : labelId // ignore: cast_nullable_to_non_nullable
              as int?,
      labelName: freezed == labelName
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramFilterLabelImplCopyWith<$Res>
    implements $ProgramFilterCopyWith<$Res> {
  factory _$$ProgramFilterLabelImplCopyWith(_$ProgramFilterLabelImpl value,
          $Res Function(_$ProgramFilterLabelImpl) then) =
      __$$ProgramFilterLabelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? labelId, String? labelName, String? updatedAt, bool? isSelected});
}

/// @nodoc
class __$$ProgramFilterLabelImplCopyWithImpl<$Res>
    extends _$ProgramFilterCopyWithImpl<$Res, _$ProgramFilterLabelImpl>
    implements _$$ProgramFilterLabelImplCopyWith<$Res> {
  __$$ProgramFilterLabelImplCopyWithImpl(_$ProgramFilterLabelImpl _value,
      $Res Function(_$ProgramFilterLabelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelId = freezed,
    Object? labelName = freezed,
    Object? updatedAt = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$ProgramFilterLabelImpl(
      labelId: freezed == labelId
          ? _value.labelId
          : labelId // ignore: cast_nullable_to_non_nullable
              as int?,
      labelName: freezed == labelName
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ProgramFilterLabelImpl implements ProgramFilterLabel {
  const _$ProgramFilterLabelImpl(
      {this.labelId, this.labelName, this.updatedAt, this.isSelected});

  @override
  final int? labelId;
  @override
  final String? labelName;
  @override
  final String? updatedAt;
  @override
  final bool? isSelected;

  @override
  String toString() {
    return 'ProgramFilter.label(labelId: $labelId, labelName: $labelName, updatedAt: $updatedAt, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramFilterLabelImpl &&
            (identical(other.labelId, labelId) || other.labelId == labelId) &&
            (identical(other.labelName, labelName) ||
                other.labelName == labelName) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, labelId, labelName, updatedAt, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramFilterLabelImplCopyWith<_$ProgramFilterLabelImpl> get copyWith =>
      __$$ProgramFilterLabelImplCopyWithImpl<_$ProgramFilterLabelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? labelId, String? labelName,
            String? updatedAt, bool? isSelected)
        label,
  }) {
    return label(labelId, labelName, updatedAt, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? labelId, String? labelName, String? updatedAt,
            bool? isSelected)?
        label,
  }) {
    return label?.call(labelId, labelName, updatedAt, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? labelId, String? labelName, String? updatedAt,
            bool? isSelected)?
        label,
    required TResult orElse(),
  }) {
    if (label != null) {
      return label(labelId, labelName, updatedAt, isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramFilterLabel value) label,
  }) {
    return label(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramFilterLabel value)? label,
  }) {
    return label?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramFilterLabel value)? label,
    required TResult orElse(),
  }) {
    if (label != null) {
      return label(this);
    }
    return orElse();
  }
}

abstract class ProgramFilterLabel implements ProgramFilter {
  const factory ProgramFilterLabel(
      {final int? labelId,
      final String? labelName,
      final String? updatedAt,
      final bool? isSelected}) = _$ProgramFilterLabelImpl;

  @override
  int? get labelId;
  @override
  String? get labelName;
  @override
  String? get updatedAt;
  @override
  bool? get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$ProgramFilterLabelImplCopyWith<_$ProgramFilterLabelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
