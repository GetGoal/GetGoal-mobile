// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProgramCreate {
  String? get imagePath => throw _privateConstructorUsedError;
  String? get programName => throw _privateConstructorUsedError;
  String? get programDescription => throw _privateConstructorUsedError;
  List<Label>? get category => throw _privateConstructorUsedError;
  String? get expectedTime => throw _privateConstructorUsedError;
  List<Task>? get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgramCreateCopyWith<ProgramCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramCreateCopyWith<$Res> {
  factory $ProgramCreateCopyWith(
          ProgramCreate value, $Res Function(ProgramCreate) then) =
      _$ProgramCreateCopyWithImpl<$Res, ProgramCreate>;
  @useResult
  $Res call(
      {String? imagePath,
      String? programName,
      String? programDescription,
      List<Label>? category,
      String? expectedTime,
      List<Task>? tasks});
}

/// @nodoc
class _$ProgramCreateCopyWithImpl<$Res, $Val extends ProgramCreate>
    implements $ProgramCreateCopyWith<$Res> {
  _$ProgramCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? programName = freezed,
    Object? programDescription = freezed,
    Object? category = freezed,
    Object? expectedTime = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      programName: freezed == programName
          ? _value.programName
          : programName // ignore: cast_nullable_to_non_nullable
              as String?,
      programDescription: freezed == programDescription
          ? _value.programDescription
          : programDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Label>?,
      expectedTime: freezed == expectedTime
          ? _value.expectedTime
          : expectedTime // ignore: cast_nullable_to_non_nullable
              as String?,
      tasks: freezed == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramCreateImplCopyWith<$Res>
    implements $ProgramCreateCopyWith<$Res> {
  factory _$$ProgramCreateImplCopyWith(
          _$ProgramCreateImpl value, $Res Function(_$ProgramCreateImpl) then) =
      __$$ProgramCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? imagePath,
      String? programName,
      String? programDescription,
      List<Label>? category,
      String? expectedTime,
      List<Task>? tasks});
}

/// @nodoc
class __$$ProgramCreateImplCopyWithImpl<$Res>
    extends _$ProgramCreateCopyWithImpl<$Res, _$ProgramCreateImpl>
    implements _$$ProgramCreateImplCopyWith<$Res> {
  __$$ProgramCreateImplCopyWithImpl(
      _$ProgramCreateImpl _value, $Res Function(_$ProgramCreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? programName = freezed,
    Object? programDescription = freezed,
    Object? category = freezed,
    Object? expectedTime = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_$ProgramCreateImpl(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      programName: freezed == programName
          ? _value.programName
          : programName // ignore: cast_nullable_to_non_nullable
              as String?,
      programDescription: freezed == programDescription
          ? _value.programDescription
          : programDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Label>?,
      expectedTime: freezed == expectedTime
          ? _value.expectedTime
          : expectedTime // ignore: cast_nullable_to_non_nullable
              as String?,
      tasks: freezed == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>?,
    ));
  }
}

/// @nodoc

class _$ProgramCreateImpl implements _ProgramCreate {
  const _$ProgramCreateImpl(
      {this.imagePath,
      this.programName,
      this.programDescription,
      final List<Label>? category,
      this.expectedTime,
      final List<Task>? tasks})
      : _category = category,
        _tasks = tasks;

  @override
  final String? imagePath;
  @override
  final String? programName;
  @override
  final String? programDescription;
  final List<Label>? _category;
  @override
  List<Label>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? expectedTime;
  final List<Task>? _tasks;
  @override
  List<Task>? get tasks {
    final value = _tasks;
    if (value == null) return null;
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProgramCreate(imagePath: $imagePath, programName: $programName, programDescription: $programDescription, category: $category, expectedTime: $expectedTime, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramCreateImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.programName, programName) ||
                other.programName == programName) &&
            (identical(other.programDescription, programDescription) ||
                other.programDescription == programDescription) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.expectedTime, expectedTime) ||
                other.expectedTime == expectedTime) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      imagePath,
      programName,
      programDescription,
      const DeepCollectionEquality().hash(_category),
      expectedTime,
      const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramCreateImplCopyWith<_$ProgramCreateImpl> get copyWith =>
      __$$ProgramCreateImplCopyWithImpl<_$ProgramCreateImpl>(this, _$identity);
}

abstract class _ProgramCreate implements ProgramCreate {
  const factory _ProgramCreate(
      {final String? imagePath,
      final String? programName,
      final String? programDescription,
      final List<Label>? category,
      final String? expectedTime,
      final List<Task>? tasks}) = _$ProgramCreateImpl;

  @override
  String? get imagePath;
  @override
  String? get programName;
  @override
  String? get programDescription;
  @override
  List<Label>? get category;
  @override
  String? get expectedTime;
  @override
  List<Task>? get tasks;
  @override
  @JsonKey(ignore: true)
  _$$ProgramCreateImplCopyWith<_$ProgramCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
