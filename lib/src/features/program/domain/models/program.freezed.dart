// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Program {
  int? get programId => throw _privateConstructorUsedError;
  String? get programName => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get programImage => throw _privateConstructorUsedError;
  String? get programDesc => throw _privateConstructorUsedError;
  String? get expectedTime => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  List<Label>? get labels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgramCopyWith<Program> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramCopyWith<$Res> {
  factory $ProgramCopyWith(Program value, $Res Function(Program) then) =
      _$ProgramCopyWithImpl<$Res, Program>;
  @useResult
  $Res call(
      {int? programId,
      String? programName,
      double? rating,
      String? programImage,
      String? programDesc,
      String? expectedTime,
      String? updatedAt,
      List<Label>? labels});
}

/// @nodoc
class _$ProgramCopyWithImpl<$Res, $Val extends Program>
    implements $ProgramCopyWith<$Res> {
  _$ProgramCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? programName = freezed,
    Object? rating = freezed,
    Object? programImage = freezed,
    Object? programDesc = freezed,
    Object? expectedTime = freezed,
    Object? updatedAt = freezed,
    Object? labels = freezed,
  }) {
    return _then(_value.copyWith(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int?,
      programName: freezed == programName
          ? _value.programName
          : programName // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      programImage: freezed == programImage
          ? _value.programImage
          : programImage // ignore: cast_nullable_to_non_nullable
              as String?,
      programDesc: freezed == programDesc
          ? _value.programDesc
          : programDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedTime: freezed == expectedTime
          ? _value.expectedTime
          : expectedTime // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      labels: freezed == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<Label>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramImplCopyWith<$Res> implements $ProgramCopyWith<$Res> {
  factory _$$ProgramImplCopyWith(
          _$ProgramImpl value, $Res Function(_$ProgramImpl) then) =
      __$$ProgramImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? programId,
      String? programName,
      double? rating,
      String? programImage,
      String? programDesc,
      String? expectedTime,
      String? updatedAt,
      List<Label>? labels});
}

/// @nodoc
class __$$ProgramImplCopyWithImpl<$Res>
    extends _$ProgramCopyWithImpl<$Res, _$ProgramImpl>
    implements _$$ProgramImplCopyWith<$Res> {
  __$$ProgramImplCopyWithImpl(
      _$ProgramImpl _value, $Res Function(_$ProgramImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? programName = freezed,
    Object? rating = freezed,
    Object? programImage = freezed,
    Object? programDesc = freezed,
    Object? expectedTime = freezed,
    Object? updatedAt = freezed,
    Object? labels = freezed,
  }) {
    return _then(_$ProgramImpl(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int?,
      programName: freezed == programName
          ? _value.programName
          : programName // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      programImage: freezed == programImage
          ? _value.programImage
          : programImage // ignore: cast_nullable_to_non_nullable
              as String?,
      programDesc: freezed == programDesc
          ? _value.programDesc
          : programDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedTime: freezed == expectedTime
          ? _value.expectedTime
          : expectedTime // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      labels: freezed == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<Label>?,
    ));
  }
}

/// @nodoc

class _$ProgramImpl implements _Program {
  const _$ProgramImpl(
      {this.programId,
      this.programName,
      this.rating,
      this.programImage,
      this.programDesc,
      this.expectedTime,
      this.updatedAt,
      final List<Label>? labels})
      : _labels = labels;

  @override
  final int? programId;
  @override
  final String? programName;
  @override
  final double? rating;
  @override
  final String? programImage;
  @override
  final String? programDesc;
  @override
  final String? expectedTime;
  @override
  final String? updatedAt;
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
    return 'Program(programId: $programId, programName: $programName, rating: $rating, programImage: $programImage, programDesc: $programDesc, expectedTime: $expectedTime, updatedAt: $updatedAt, labels: $labels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.programName, programName) ||
                other.programName == programName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.programImage, programImage) ||
                other.programImage == programImage) &&
            (identical(other.programDesc, programDesc) ||
                other.programDesc == programDesc) &&
            (identical(other.expectedTime, expectedTime) ||
                other.expectedTime == expectedTime) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      programId,
      programName,
      rating,
      programImage,
      programDesc,
      expectedTime,
      updatedAt,
      const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramImplCopyWith<_$ProgramImpl> get copyWith =>
      __$$ProgramImplCopyWithImpl<_$ProgramImpl>(this, _$identity);
}

abstract class _Program implements Program {
  const factory _Program(
      {final int? programId,
      final String? programName,
      final double? rating,
      final String? programImage,
      final String? programDesc,
      final String? expectedTime,
      final String? updatedAt,
      final List<Label>? labels}) = _$ProgramImpl;

  @override
  int? get programId;
  @override
  String? get programName;
  @override
  double? get rating;
  @override
  String? get programImage;
  @override
  String? get programDesc;
  @override
  String? get expectedTime;
  @override
  String? get updatedAt;
  @override
  List<Label>? get labels;
  @override
  @JsonKey(ignore: true)
  _$$ProgramImplCopyWith<_$ProgramImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Label {
  int? get labelId => throw _privateConstructorUsedError;
  String? get labelName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LabelCopyWith<Label> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelCopyWith<$Res> {
  factory $LabelCopyWith(Label value, $Res Function(Label) then) =
      _$LabelCopyWithImpl<$Res, Label>;
  @useResult
  $Res call({int? labelId, String? labelName});
}

/// @nodoc
class _$LabelCopyWithImpl<$Res, $Val extends Label>
    implements $LabelCopyWith<$Res> {
  _$LabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelId = freezed,
    Object? labelName = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabelImplCopyWith<$Res> implements $LabelCopyWith<$Res> {
  factory _$$LabelImplCopyWith(
          _$LabelImpl value, $Res Function(_$LabelImpl) then) =
      __$$LabelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? labelId, String? labelName});
}

/// @nodoc
class __$$LabelImplCopyWithImpl<$Res>
    extends _$LabelCopyWithImpl<$Res, _$LabelImpl>
    implements _$$LabelImplCopyWith<$Res> {
  __$$LabelImplCopyWithImpl(
      _$LabelImpl _value, $Res Function(_$LabelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelId = freezed,
    Object? labelName = freezed,
  }) {
    return _then(_$LabelImpl(
      labelId: freezed == labelId
          ? _value.labelId
          : labelId // ignore: cast_nullable_to_non_nullable
              as int?,
      labelName: freezed == labelName
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LabelImpl implements _Label {
  const _$LabelImpl({this.labelId, this.labelName});

  @override
  final int? labelId;
  @override
  final String? labelName;

  @override
  String toString() {
    return 'Label(labelId: $labelId, labelName: $labelName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelImpl &&
            (identical(other.labelId, labelId) || other.labelId == labelId) &&
            (identical(other.labelName, labelName) ||
                other.labelName == labelName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labelId, labelName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelImplCopyWith<_$LabelImpl> get copyWith =>
      __$$LabelImplCopyWithImpl<_$LabelImpl>(this, _$identity);
}

abstract class _Label implements Label {
  const factory _Label({final int? labelId, final String? labelName}) =
      _$LabelImpl;

  @override
  int? get labelId;
  @override
  String? get labelName;
  @override
  @JsonKey(ignore: true)
  _$$LabelImplCopyWith<_$LabelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
