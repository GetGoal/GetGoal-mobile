// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProgramStatistics {
  int? get programId => throw _privateConstructorUsedError;
  int? get joined => throw _privateConstructorUsedError;
  int? get saved => throw _privateConstructorUsedError;
  int? get viewed => throw _privateConstructorUsedError;
  String? get lastJoined => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgramStatisticsCopyWith<ProgramStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramStatisticsCopyWith<$Res> {
  factory $ProgramStatisticsCopyWith(
          ProgramStatistics value, $Res Function(ProgramStatistics) then) =
      _$ProgramStatisticsCopyWithImpl<$Res, ProgramStatistics>;
  @useResult
  $Res call(
      {int? programId,
      int? joined,
      int? saved,
      int? viewed,
      String? lastJoined});
}

/// @nodoc
class _$ProgramStatisticsCopyWithImpl<$Res, $Val extends ProgramStatistics>
    implements $ProgramStatisticsCopyWith<$Res> {
  _$ProgramStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? joined = freezed,
    Object? saved = freezed,
    Object? viewed = freezed,
    Object? lastJoined = freezed,
  }) {
    return _then(_value.copyWith(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int?,
      joined: freezed == joined
          ? _value.joined
          : joined // ignore: cast_nullable_to_non_nullable
              as int?,
      saved: freezed == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as int?,
      viewed: freezed == viewed
          ? _value.viewed
          : viewed // ignore: cast_nullable_to_non_nullable
              as int?,
      lastJoined: freezed == lastJoined
          ? _value.lastJoined
          : lastJoined // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramStatisticsImplCopyWith<$Res>
    implements $ProgramStatisticsCopyWith<$Res> {
  factory _$$ProgramStatisticsImplCopyWith(_$ProgramStatisticsImpl value,
          $Res Function(_$ProgramStatisticsImpl) then) =
      __$$ProgramStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? programId,
      int? joined,
      int? saved,
      int? viewed,
      String? lastJoined});
}

/// @nodoc
class __$$ProgramStatisticsImplCopyWithImpl<$Res>
    extends _$ProgramStatisticsCopyWithImpl<$Res, _$ProgramStatisticsImpl>
    implements _$$ProgramStatisticsImplCopyWith<$Res> {
  __$$ProgramStatisticsImplCopyWithImpl(_$ProgramStatisticsImpl _value,
      $Res Function(_$ProgramStatisticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? joined = freezed,
    Object? saved = freezed,
    Object? viewed = freezed,
    Object? lastJoined = freezed,
  }) {
    return _then(_$ProgramStatisticsImpl(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int?,
      joined: freezed == joined
          ? _value.joined
          : joined // ignore: cast_nullable_to_non_nullable
              as int?,
      saved: freezed == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as int?,
      viewed: freezed == viewed
          ? _value.viewed
          : viewed // ignore: cast_nullable_to_non_nullable
              as int?,
      lastJoined: freezed == lastJoined
          ? _value.lastJoined
          : lastJoined // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProgramStatisticsImpl implements _ProgramStatistics {
  const _$ProgramStatisticsImpl(
      {this.programId, this.joined, this.saved, this.viewed, this.lastJoined});

  @override
  final int? programId;
  @override
  final int? joined;
  @override
  final int? saved;
  @override
  final int? viewed;
  @override
  final String? lastJoined;

  @override
  String toString() {
    return 'ProgramStatistics(programId: $programId, joined: $joined, saved: $saved, viewed: $viewed, lastJoined: $lastJoined)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStatisticsImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.joined, joined) || other.joined == joined) &&
            (identical(other.saved, saved) || other.saved == saved) &&
            (identical(other.viewed, viewed) || other.viewed == viewed) &&
            (identical(other.lastJoined, lastJoined) ||
                other.lastJoined == lastJoined));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, programId, joined, saved, viewed, lastJoined);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramStatisticsImplCopyWith<_$ProgramStatisticsImpl> get copyWith =>
      __$$ProgramStatisticsImplCopyWithImpl<_$ProgramStatisticsImpl>(
          this, _$identity);
}

abstract class _ProgramStatistics implements ProgramStatistics {
  const factory _ProgramStatistics(
      {final int? programId,
      final int? joined,
      final int? saved,
      final int? viewed,
      final String? lastJoined}) = _$ProgramStatisticsImpl;

  @override
  int? get programId;
  @override
  int? get joined;
  @override
  int? get saved;
  @override
  int? get viewed;
  @override
  String? get lastJoined;
  @override
  @JsonKey(ignore: true)
  _$$ProgramStatisticsImplCopyWith<_$ProgramStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
