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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProgramEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllProgram,
    required TResult Function() getRecommendProgram,
    required TResult Function() clicked,
    required TResult Function(String labelName) filterClicked,
    required TResult Function() searching,
    required TResult Function(String text) searchProgram,
    required TResult Function(String programId) saveProgram,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllProgram,
    TResult? Function()? getRecommendProgram,
    TResult? Function()? clicked,
    TResult? Function(String labelName)? filterClicked,
    TResult? Function()? searching,
    TResult? Function(String text)? searchProgram,
    TResult? Function(String programId)? saveProgram,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllProgram,
    TResult Function()? getRecommendProgram,
    TResult Function()? clicked,
    TResult Function(String labelName)? filterClicked,
    TResult Function()? searching,
    TResult Function(String text)? searchProgram,
    TResult Function(String programId)? saveProgram,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEventStart value) started,
    required TResult Function(ProgramEventGetAllProgram value) getAllProgram,
    required TResult Function(ProgramEventGetRecommendProgram value)
        getRecommendProgram,
    required TResult Function(ProgramEventClicked value) clicked,
    required TResult Function(ProgramEventFilterClicked value) filterClicked,
    required TResult Function(ProgramEventSearching value) searching,
    required TResult Function(ProgramEventSearchProgram value) searchProgram,
    required TResult Function(ProgramEventSaveProgram value) saveProgram,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventStart value)? started,
    TResult? Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult? Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult? Function(ProgramEventClicked value)? clicked,
    TResult? Function(ProgramEventFilterClicked value)? filterClicked,
    TResult? Function(ProgramEventSearching value)? searching,
    TResult? Function(ProgramEventSearchProgram value)? searchProgram,
    TResult? Function(ProgramEventSaveProgram value)? saveProgram,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventStart value)? started,
    TResult Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult Function(ProgramEventClicked value)? clicked,
    TResult Function(ProgramEventFilterClicked value)? filterClicked,
    TResult Function(ProgramEventSearching value)? searching,
    TResult Function(ProgramEventSearchProgram value)? searchProgram,
    TResult Function(ProgramEventSaveProgram value)? saveProgram,
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProgramEventStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllProgram,
    required TResult Function() getRecommendProgram,
    required TResult Function() clicked,
    required TResult Function(String labelName) filterClicked,
    required TResult Function() searching,
    required TResult Function(String text) searchProgram,
    required TResult Function(String programId) saveProgram,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllProgram,
    TResult? Function()? getRecommendProgram,
    TResult? Function()? clicked,
    TResult? Function(String labelName)? filterClicked,
    TResult? Function()? searching,
    TResult? Function(String text)? searchProgram,
    TResult? Function(String programId)? saveProgram,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllProgram,
    TResult Function()? getRecommendProgram,
    TResult Function()? clicked,
    TResult Function(String labelName)? filterClicked,
    TResult Function()? searching,
    TResult Function(String text)? searchProgram,
    TResult Function(String programId)? saveProgram,
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
    required TResult Function(ProgramEventGetAllProgram value) getAllProgram,
    required TResult Function(ProgramEventGetRecommendProgram value)
        getRecommendProgram,
    required TResult Function(ProgramEventClicked value) clicked,
    required TResult Function(ProgramEventFilterClicked value) filterClicked,
    required TResult Function(ProgramEventSearching value) searching,
    required TResult Function(ProgramEventSearchProgram value) searchProgram,
    required TResult Function(ProgramEventSaveProgram value) saveProgram,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventStart value)? started,
    TResult? Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult? Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult? Function(ProgramEventClicked value)? clicked,
    TResult? Function(ProgramEventFilterClicked value)? filterClicked,
    TResult? Function(ProgramEventSearching value)? searching,
    TResult? Function(ProgramEventSearchProgram value)? searchProgram,
    TResult? Function(ProgramEventSaveProgram value)? saveProgram,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventStart value)? started,
    TResult Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult Function(ProgramEventClicked value)? clicked,
    TResult Function(ProgramEventFilterClicked value)? filterClicked,
    TResult Function(ProgramEventSearching value)? searching,
    TResult Function(ProgramEventSearchProgram value)? searchProgram,
    TResult Function(ProgramEventSaveProgram value)? saveProgram,
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
abstract class _$$ProgramEventGetAllProgramImplCopyWith<$Res> {
  factory _$$ProgramEventGetAllProgramImplCopyWith(
          _$ProgramEventGetAllProgramImpl value,
          $Res Function(_$ProgramEventGetAllProgramImpl) then) =
      __$$ProgramEventGetAllProgramImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramEventGetAllProgramImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res, _$ProgramEventGetAllProgramImpl>
    implements _$$ProgramEventGetAllProgramImplCopyWith<$Res> {
  __$$ProgramEventGetAllProgramImplCopyWithImpl(
      _$ProgramEventGetAllProgramImpl _value,
      $Res Function(_$ProgramEventGetAllProgramImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramEventGetAllProgramImpl implements ProgramEventGetAllProgram {
  const _$ProgramEventGetAllProgramImpl();

  @override
  String toString() {
    return 'ProgramEvent.getAllProgram()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEventGetAllProgramImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllProgram,
    required TResult Function() getRecommendProgram,
    required TResult Function() clicked,
    required TResult Function(String labelName) filterClicked,
    required TResult Function() searching,
    required TResult Function(String text) searchProgram,
    required TResult Function(String programId) saveProgram,
  }) {
    return getAllProgram();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllProgram,
    TResult? Function()? getRecommendProgram,
    TResult? Function()? clicked,
    TResult? Function(String labelName)? filterClicked,
    TResult? Function()? searching,
    TResult? Function(String text)? searchProgram,
    TResult? Function(String programId)? saveProgram,
  }) {
    return getAllProgram?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllProgram,
    TResult Function()? getRecommendProgram,
    TResult Function()? clicked,
    TResult Function(String labelName)? filterClicked,
    TResult Function()? searching,
    TResult Function(String text)? searchProgram,
    TResult Function(String programId)? saveProgram,
    required TResult orElse(),
  }) {
    if (getAllProgram != null) {
      return getAllProgram();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEventStart value) started,
    required TResult Function(ProgramEventGetAllProgram value) getAllProgram,
    required TResult Function(ProgramEventGetRecommendProgram value)
        getRecommendProgram,
    required TResult Function(ProgramEventClicked value) clicked,
    required TResult Function(ProgramEventFilterClicked value) filterClicked,
    required TResult Function(ProgramEventSearching value) searching,
    required TResult Function(ProgramEventSearchProgram value) searchProgram,
    required TResult Function(ProgramEventSaveProgram value) saveProgram,
  }) {
    return getAllProgram(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventStart value)? started,
    TResult? Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult? Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult? Function(ProgramEventClicked value)? clicked,
    TResult? Function(ProgramEventFilterClicked value)? filterClicked,
    TResult? Function(ProgramEventSearching value)? searching,
    TResult? Function(ProgramEventSearchProgram value)? searchProgram,
    TResult? Function(ProgramEventSaveProgram value)? saveProgram,
  }) {
    return getAllProgram?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventStart value)? started,
    TResult Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult Function(ProgramEventClicked value)? clicked,
    TResult Function(ProgramEventFilterClicked value)? filterClicked,
    TResult Function(ProgramEventSearching value)? searching,
    TResult Function(ProgramEventSearchProgram value)? searchProgram,
    TResult Function(ProgramEventSaveProgram value)? saveProgram,
    required TResult orElse(),
  }) {
    if (getAllProgram != null) {
      return getAllProgram(this);
    }
    return orElse();
  }
}

abstract class ProgramEventGetAllProgram implements ProgramEvent {
  const factory ProgramEventGetAllProgram() = _$ProgramEventGetAllProgramImpl;
}

/// @nodoc
abstract class _$$ProgramEventGetRecommendProgramImplCopyWith<$Res> {
  factory _$$ProgramEventGetRecommendProgramImplCopyWith(
          _$ProgramEventGetRecommendProgramImpl value,
          $Res Function(_$ProgramEventGetRecommendProgramImpl) then) =
      __$$ProgramEventGetRecommendProgramImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramEventGetRecommendProgramImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res,
        _$ProgramEventGetRecommendProgramImpl>
    implements _$$ProgramEventGetRecommendProgramImplCopyWith<$Res> {
  __$$ProgramEventGetRecommendProgramImplCopyWithImpl(
      _$ProgramEventGetRecommendProgramImpl _value,
      $Res Function(_$ProgramEventGetRecommendProgramImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramEventGetRecommendProgramImpl
    implements ProgramEventGetRecommendProgram {
  const _$ProgramEventGetRecommendProgramImpl();

  @override
  String toString() {
    return 'ProgramEvent.getRecommendProgram()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEventGetRecommendProgramImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllProgram,
    required TResult Function() getRecommendProgram,
    required TResult Function() clicked,
    required TResult Function(String labelName) filterClicked,
    required TResult Function() searching,
    required TResult Function(String text) searchProgram,
    required TResult Function(String programId) saveProgram,
  }) {
    return getRecommendProgram();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllProgram,
    TResult? Function()? getRecommendProgram,
    TResult? Function()? clicked,
    TResult? Function(String labelName)? filterClicked,
    TResult? Function()? searching,
    TResult? Function(String text)? searchProgram,
    TResult? Function(String programId)? saveProgram,
  }) {
    return getRecommendProgram?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllProgram,
    TResult Function()? getRecommendProgram,
    TResult Function()? clicked,
    TResult Function(String labelName)? filterClicked,
    TResult Function()? searching,
    TResult Function(String text)? searchProgram,
    TResult Function(String programId)? saveProgram,
    required TResult orElse(),
  }) {
    if (getRecommendProgram != null) {
      return getRecommendProgram();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEventStart value) started,
    required TResult Function(ProgramEventGetAllProgram value) getAllProgram,
    required TResult Function(ProgramEventGetRecommendProgram value)
        getRecommendProgram,
    required TResult Function(ProgramEventClicked value) clicked,
    required TResult Function(ProgramEventFilterClicked value) filterClicked,
    required TResult Function(ProgramEventSearching value) searching,
    required TResult Function(ProgramEventSearchProgram value) searchProgram,
    required TResult Function(ProgramEventSaveProgram value) saveProgram,
  }) {
    return getRecommendProgram(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventStart value)? started,
    TResult? Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult? Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult? Function(ProgramEventClicked value)? clicked,
    TResult? Function(ProgramEventFilterClicked value)? filterClicked,
    TResult? Function(ProgramEventSearching value)? searching,
    TResult? Function(ProgramEventSearchProgram value)? searchProgram,
    TResult? Function(ProgramEventSaveProgram value)? saveProgram,
  }) {
    return getRecommendProgram?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventStart value)? started,
    TResult Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult Function(ProgramEventClicked value)? clicked,
    TResult Function(ProgramEventFilterClicked value)? filterClicked,
    TResult Function(ProgramEventSearching value)? searching,
    TResult Function(ProgramEventSearchProgram value)? searchProgram,
    TResult Function(ProgramEventSaveProgram value)? saveProgram,
    required TResult orElse(),
  }) {
    if (getRecommendProgram != null) {
      return getRecommendProgram(this);
    }
    return orElse();
  }
}

abstract class ProgramEventGetRecommendProgram implements ProgramEvent {
  const factory ProgramEventGetRecommendProgram() =
      _$ProgramEventGetRecommendProgramImpl;
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
  bool operator ==(Object other) {
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
    required TResult Function() getAllProgram,
    required TResult Function() getRecommendProgram,
    required TResult Function() clicked,
    required TResult Function(String labelName) filterClicked,
    required TResult Function() searching,
    required TResult Function(String text) searchProgram,
    required TResult Function(String programId) saveProgram,
  }) {
    return clicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllProgram,
    TResult? Function()? getRecommendProgram,
    TResult? Function()? clicked,
    TResult? Function(String labelName)? filterClicked,
    TResult? Function()? searching,
    TResult? Function(String text)? searchProgram,
    TResult? Function(String programId)? saveProgram,
  }) {
    return clicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllProgram,
    TResult Function()? getRecommendProgram,
    TResult Function()? clicked,
    TResult Function(String labelName)? filterClicked,
    TResult Function()? searching,
    TResult Function(String text)? searchProgram,
    TResult Function(String programId)? saveProgram,
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
    required TResult Function(ProgramEventGetAllProgram value) getAllProgram,
    required TResult Function(ProgramEventGetRecommendProgram value)
        getRecommendProgram,
    required TResult Function(ProgramEventClicked value) clicked,
    required TResult Function(ProgramEventFilterClicked value) filterClicked,
    required TResult Function(ProgramEventSearching value) searching,
    required TResult Function(ProgramEventSearchProgram value) searchProgram,
    required TResult Function(ProgramEventSaveProgram value) saveProgram,
  }) {
    return clicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventStart value)? started,
    TResult? Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult? Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult? Function(ProgramEventClicked value)? clicked,
    TResult? Function(ProgramEventFilterClicked value)? filterClicked,
    TResult? Function(ProgramEventSearching value)? searching,
    TResult? Function(ProgramEventSearchProgram value)? searchProgram,
    TResult? Function(ProgramEventSaveProgram value)? saveProgram,
  }) {
    return clicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventStart value)? started,
    TResult Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult Function(ProgramEventClicked value)? clicked,
    TResult Function(ProgramEventFilterClicked value)? filterClicked,
    TResult Function(ProgramEventSearching value)? searching,
    TResult Function(ProgramEventSearchProgram value)? searchProgram,
    TResult Function(ProgramEventSaveProgram value)? saveProgram,
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
  bool operator ==(Object other) {
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
    required TResult Function() getAllProgram,
    required TResult Function() getRecommendProgram,
    required TResult Function() clicked,
    required TResult Function(String labelName) filterClicked,
    required TResult Function() searching,
    required TResult Function(String text) searchProgram,
    required TResult Function(String programId) saveProgram,
  }) {
    return filterClicked(labelName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllProgram,
    TResult? Function()? getRecommendProgram,
    TResult? Function()? clicked,
    TResult? Function(String labelName)? filterClicked,
    TResult? Function()? searching,
    TResult? Function(String text)? searchProgram,
    TResult? Function(String programId)? saveProgram,
  }) {
    return filterClicked?.call(labelName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllProgram,
    TResult Function()? getRecommendProgram,
    TResult Function()? clicked,
    TResult Function(String labelName)? filterClicked,
    TResult Function()? searching,
    TResult Function(String text)? searchProgram,
    TResult Function(String programId)? saveProgram,
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
    required TResult Function(ProgramEventGetAllProgram value) getAllProgram,
    required TResult Function(ProgramEventGetRecommendProgram value)
        getRecommendProgram,
    required TResult Function(ProgramEventClicked value) clicked,
    required TResult Function(ProgramEventFilterClicked value) filterClicked,
    required TResult Function(ProgramEventSearching value) searching,
    required TResult Function(ProgramEventSearchProgram value) searchProgram,
    required TResult Function(ProgramEventSaveProgram value) saveProgram,
  }) {
    return filterClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventStart value)? started,
    TResult? Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult? Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult? Function(ProgramEventClicked value)? clicked,
    TResult? Function(ProgramEventFilterClicked value)? filterClicked,
    TResult? Function(ProgramEventSearching value)? searching,
    TResult? Function(ProgramEventSearchProgram value)? searchProgram,
    TResult? Function(ProgramEventSaveProgram value)? saveProgram,
  }) {
    return filterClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventStart value)? started,
    TResult Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult Function(ProgramEventClicked value)? clicked,
    TResult Function(ProgramEventFilterClicked value)? filterClicked,
    TResult Function(ProgramEventSearching value)? searching,
    TResult Function(ProgramEventSearchProgram value)? searchProgram,
    TResult Function(ProgramEventSaveProgram value)? saveProgram,
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
abstract class _$$ProgramEventSearchingImplCopyWith<$Res> {
  factory _$$ProgramEventSearchingImplCopyWith(
          _$ProgramEventSearchingImpl value,
          $Res Function(_$ProgramEventSearchingImpl) then) =
      __$$ProgramEventSearchingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramEventSearchingImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res, _$ProgramEventSearchingImpl>
    implements _$$ProgramEventSearchingImplCopyWith<$Res> {
  __$$ProgramEventSearchingImplCopyWithImpl(_$ProgramEventSearchingImpl _value,
      $Res Function(_$ProgramEventSearchingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramEventSearchingImpl implements ProgramEventSearching {
  const _$ProgramEventSearchingImpl();

  @override
  String toString() {
    return 'ProgramEvent.searching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEventSearchingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllProgram,
    required TResult Function() getRecommendProgram,
    required TResult Function() clicked,
    required TResult Function(String labelName) filterClicked,
    required TResult Function() searching,
    required TResult Function(String text) searchProgram,
    required TResult Function(String programId) saveProgram,
  }) {
    return searching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllProgram,
    TResult? Function()? getRecommendProgram,
    TResult? Function()? clicked,
    TResult? Function(String labelName)? filterClicked,
    TResult? Function()? searching,
    TResult? Function(String text)? searchProgram,
    TResult? Function(String programId)? saveProgram,
  }) {
    return searching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllProgram,
    TResult Function()? getRecommendProgram,
    TResult Function()? clicked,
    TResult Function(String labelName)? filterClicked,
    TResult Function()? searching,
    TResult Function(String text)? searchProgram,
    TResult Function(String programId)? saveProgram,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEventStart value) started,
    required TResult Function(ProgramEventGetAllProgram value) getAllProgram,
    required TResult Function(ProgramEventGetRecommendProgram value)
        getRecommendProgram,
    required TResult Function(ProgramEventClicked value) clicked,
    required TResult Function(ProgramEventFilterClicked value) filterClicked,
    required TResult Function(ProgramEventSearching value) searching,
    required TResult Function(ProgramEventSearchProgram value) searchProgram,
    required TResult Function(ProgramEventSaveProgram value) saveProgram,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventStart value)? started,
    TResult? Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult? Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult? Function(ProgramEventClicked value)? clicked,
    TResult? Function(ProgramEventFilterClicked value)? filterClicked,
    TResult? Function(ProgramEventSearching value)? searching,
    TResult? Function(ProgramEventSearchProgram value)? searchProgram,
    TResult? Function(ProgramEventSaveProgram value)? saveProgram,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventStart value)? started,
    TResult Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult Function(ProgramEventClicked value)? clicked,
    TResult Function(ProgramEventFilterClicked value)? filterClicked,
    TResult Function(ProgramEventSearching value)? searching,
    TResult Function(ProgramEventSearchProgram value)? searchProgram,
    TResult Function(ProgramEventSaveProgram value)? saveProgram,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class ProgramEventSearching implements ProgramEvent {
  const factory ProgramEventSearching() = _$ProgramEventSearchingImpl;
}

/// @nodoc
abstract class _$$ProgramEventSearchProgramImplCopyWith<$Res> {
  factory _$$ProgramEventSearchProgramImplCopyWith(
          _$ProgramEventSearchProgramImpl value,
          $Res Function(_$ProgramEventSearchProgramImpl) then) =
      __$$ProgramEventSearchProgramImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$ProgramEventSearchProgramImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res, _$ProgramEventSearchProgramImpl>
    implements _$$ProgramEventSearchProgramImplCopyWith<$Res> {
  __$$ProgramEventSearchProgramImplCopyWithImpl(
      _$ProgramEventSearchProgramImpl _value,
      $Res Function(_$ProgramEventSearchProgramImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$ProgramEventSearchProgramImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProgramEventSearchProgramImpl implements ProgramEventSearchProgram {
  const _$ProgramEventSearchProgramImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'ProgramEvent.searchProgram(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEventSearchProgramImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEventSearchProgramImplCopyWith<_$ProgramEventSearchProgramImpl>
      get copyWith => __$$ProgramEventSearchProgramImplCopyWithImpl<
          _$ProgramEventSearchProgramImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllProgram,
    required TResult Function() getRecommendProgram,
    required TResult Function() clicked,
    required TResult Function(String labelName) filterClicked,
    required TResult Function() searching,
    required TResult Function(String text) searchProgram,
    required TResult Function(String programId) saveProgram,
  }) {
    return searchProgram(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllProgram,
    TResult? Function()? getRecommendProgram,
    TResult? Function()? clicked,
    TResult? Function(String labelName)? filterClicked,
    TResult? Function()? searching,
    TResult? Function(String text)? searchProgram,
    TResult? Function(String programId)? saveProgram,
  }) {
    return searchProgram?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllProgram,
    TResult Function()? getRecommendProgram,
    TResult Function()? clicked,
    TResult Function(String labelName)? filterClicked,
    TResult Function()? searching,
    TResult Function(String text)? searchProgram,
    TResult Function(String programId)? saveProgram,
    required TResult orElse(),
  }) {
    if (searchProgram != null) {
      return searchProgram(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEventStart value) started,
    required TResult Function(ProgramEventGetAllProgram value) getAllProgram,
    required TResult Function(ProgramEventGetRecommendProgram value)
        getRecommendProgram,
    required TResult Function(ProgramEventClicked value) clicked,
    required TResult Function(ProgramEventFilterClicked value) filterClicked,
    required TResult Function(ProgramEventSearching value) searching,
    required TResult Function(ProgramEventSearchProgram value) searchProgram,
    required TResult Function(ProgramEventSaveProgram value) saveProgram,
  }) {
    return searchProgram(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventStart value)? started,
    TResult? Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult? Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult? Function(ProgramEventClicked value)? clicked,
    TResult? Function(ProgramEventFilterClicked value)? filterClicked,
    TResult? Function(ProgramEventSearching value)? searching,
    TResult? Function(ProgramEventSearchProgram value)? searchProgram,
    TResult? Function(ProgramEventSaveProgram value)? saveProgram,
  }) {
    return searchProgram?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventStart value)? started,
    TResult Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult Function(ProgramEventClicked value)? clicked,
    TResult Function(ProgramEventFilterClicked value)? filterClicked,
    TResult Function(ProgramEventSearching value)? searching,
    TResult Function(ProgramEventSearchProgram value)? searchProgram,
    TResult Function(ProgramEventSaveProgram value)? saveProgram,
    required TResult orElse(),
  }) {
    if (searchProgram != null) {
      return searchProgram(this);
    }
    return orElse();
  }
}

abstract class ProgramEventSearchProgram implements ProgramEvent {
  const factory ProgramEventSearchProgram({required final String text}) =
      _$ProgramEventSearchProgramImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$ProgramEventSearchProgramImplCopyWith<_$ProgramEventSearchProgramImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramEventSaveProgramImplCopyWith<$Res> {
  factory _$$ProgramEventSaveProgramImplCopyWith(
          _$ProgramEventSaveProgramImpl value,
          $Res Function(_$ProgramEventSaveProgramImpl) then) =
      __$$ProgramEventSaveProgramImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String programId});
}

/// @nodoc
class __$$ProgramEventSaveProgramImplCopyWithImpl<$Res>
    extends _$ProgramEventCopyWithImpl<$Res, _$ProgramEventSaveProgramImpl>
    implements _$$ProgramEventSaveProgramImplCopyWith<$Res> {
  __$$ProgramEventSaveProgramImplCopyWithImpl(
      _$ProgramEventSaveProgramImpl _value,
      $Res Function(_$ProgramEventSaveProgramImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
  }) {
    return _then(_$ProgramEventSaveProgramImpl(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProgramEventSaveProgramImpl implements ProgramEventSaveProgram {
  const _$ProgramEventSaveProgramImpl({required this.programId});

  @override
  final String programId;

  @override
  String toString() {
    return 'ProgramEvent.saveProgram(programId: $programId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramEventSaveProgramImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, programId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramEventSaveProgramImplCopyWith<_$ProgramEventSaveProgramImpl>
      get copyWith => __$$ProgramEventSaveProgramImplCopyWithImpl<
          _$ProgramEventSaveProgramImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllProgram,
    required TResult Function() getRecommendProgram,
    required TResult Function() clicked,
    required TResult Function(String labelName) filterClicked,
    required TResult Function() searching,
    required TResult Function(String text) searchProgram,
    required TResult Function(String programId) saveProgram,
  }) {
    return saveProgram(programId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllProgram,
    TResult? Function()? getRecommendProgram,
    TResult? Function()? clicked,
    TResult? Function(String labelName)? filterClicked,
    TResult? Function()? searching,
    TResult? Function(String text)? searchProgram,
    TResult? Function(String programId)? saveProgram,
  }) {
    return saveProgram?.call(programId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllProgram,
    TResult Function()? getRecommendProgram,
    TResult Function()? clicked,
    TResult Function(String labelName)? filterClicked,
    TResult Function()? searching,
    TResult Function(String text)? searchProgram,
    TResult Function(String programId)? saveProgram,
    required TResult orElse(),
  }) {
    if (saveProgram != null) {
      return saveProgram(programId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgramEventStart value) started,
    required TResult Function(ProgramEventGetAllProgram value) getAllProgram,
    required TResult Function(ProgramEventGetRecommendProgram value)
        getRecommendProgram,
    required TResult Function(ProgramEventClicked value) clicked,
    required TResult Function(ProgramEventFilterClicked value) filterClicked,
    required TResult Function(ProgramEventSearching value) searching,
    required TResult Function(ProgramEventSearchProgram value) searchProgram,
    required TResult Function(ProgramEventSaveProgram value) saveProgram,
  }) {
    return saveProgram(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramEventStart value)? started,
    TResult? Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult? Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult? Function(ProgramEventClicked value)? clicked,
    TResult? Function(ProgramEventFilterClicked value)? filterClicked,
    TResult? Function(ProgramEventSearching value)? searching,
    TResult? Function(ProgramEventSearchProgram value)? searchProgram,
    TResult? Function(ProgramEventSaveProgram value)? saveProgram,
  }) {
    return saveProgram?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramEventStart value)? started,
    TResult Function(ProgramEventGetAllProgram value)? getAllProgram,
    TResult Function(ProgramEventGetRecommendProgram value)?
        getRecommendProgram,
    TResult Function(ProgramEventClicked value)? clicked,
    TResult Function(ProgramEventFilterClicked value)? filterClicked,
    TResult Function(ProgramEventSearching value)? searching,
    TResult Function(ProgramEventSearchProgram value)? searchProgram,
    TResult Function(ProgramEventSaveProgram value)? saveProgram,
    required TResult orElse(),
  }) {
    if (saveProgram != null) {
      return saveProgram(this);
    }
    return orElse();
  }
}

abstract class ProgramEventSaveProgram implements ProgramEvent {
  const factory ProgramEventSaveProgram({required final String programId}) =
      _$ProgramEventSaveProgramImpl;

  String get programId;
  @JsonKey(ignore: true)
  _$$ProgramEventSaveProgramImplCopyWith<_$ProgramEventSaveProgramImpl>
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
    required TResult Function() searchEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programs)? loadedSuccess,
    TResult? Function()? programEmpty,
    TResult? Function()? error,
    TResult? Function()? searchEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programs)? loadedSuccess,
    TResult Function()? programEmpty,
    TResult Function()? error,
    TResult Function()? searchEmpty,
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
    required TResult Function(ProgramStateSearchEmpty value) searchEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInital value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(ProgramStateEmpty value)? programEmpty,
    TResult? Function(ProgramStateError value)? error,
    TResult? Function(ProgramStateSearchEmpty value)? searchEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInital value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(ProgramStateEmpty value)? programEmpty,
    TResult Function(ProgramStateError value)? error,
    TResult Function(ProgramStateSearchEmpty value)? searchEmpty,
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
  bool operator ==(Object other) {
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
    required TResult Function() searchEmpty,
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
    TResult? Function()? searchEmpty,
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
    TResult Function()? searchEmpty,
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
    required TResult Function(ProgramStateSearchEmpty value) searchEmpty,
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
    TResult? Function(ProgramStateSearchEmpty value)? searchEmpty,
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
    TResult Function(ProgramStateSearchEmpty value)? searchEmpty,
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
  bool operator ==(Object other) {
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
    required TResult Function() searchEmpty,
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
    TResult? Function()? searchEmpty,
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
    TResult Function()? searchEmpty,
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
    required TResult Function(ProgramStateSearchEmpty value) searchEmpty,
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
    TResult? Function(ProgramStateSearchEmpty value)? searchEmpty,
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
    TResult Function(ProgramStateSearchEmpty value)? searchEmpty,
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
  bool operator ==(Object other) {
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
    required TResult Function() searchEmpty,
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
    TResult? Function()? searchEmpty,
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
    TResult Function()? searchEmpty,
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
    required TResult Function(ProgramStateSearchEmpty value) searchEmpty,
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
    TResult? Function(ProgramStateSearchEmpty value)? searchEmpty,
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
    TResult Function(ProgramStateSearchEmpty value)? searchEmpty,
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
  bool operator ==(Object other) {
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
    required TResult Function() searchEmpty,
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
    TResult? Function()? searchEmpty,
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
    TResult Function()? searchEmpty,
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
    required TResult Function(ProgramStateSearchEmpty value) searchEmpty,
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
    TResult? Function(ProgramStateSearchEmpty value)? searchEmpty,
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
    TResult Function(ProgramStateSearchEmpty value)? searchEmpty,
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
  bool operator ==(Object other) {
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
    required TResult Function() searchEmpty,
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
    TResult? Function()? searchEmpty,
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
    TResult Function()? searchEmpty,
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
    required TResult Function(ProgramStateSearchEmpty value) searchEmpty,
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
    TResult? Function(ProgramStateSearchEmpty value)? searchEmpty,
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
    TResult Function(ProgramStateSearchEmpty value)? searchEmpty,
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

/// @nodoc
abstract class _$$ProgramStateSearchEmptyImplCopyWith<$Res> {
  factory _$$ProgramStateSearchEmptyImplCopyWith(
          _$ProgramStateSearchEmptyImpl value,
          $Res Function(_$ProgramStateSearchEmptyImpl) then) =
      __$$ProgramStateSearchEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgramStateSearchEmptyImplCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$ProgramStateSearchEmptyImpl>
    implements _$$ProgramStateSearchEmptyImplCopyWith<$Res> {
  __$$ProgramStateSearchEmptyImplCopyWithImpl(
      _$ProgramStateSearchEmptyImpl _value,
      $Res Function(_$ProgramStateSearchEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgramStateSearchEmptyImpl implements ProgramStateSearchEmpty {
  const _$ProgramStateSearchEmptyImpl();

  @override
  String toString() {
    return 'ProgramState.searchEmpty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStateSearchEmptyImpl);
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
    required TResult Function() searchEmpty,
  }) {
    return searchEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Program> programs)? loadedSuccess,
    TResult? Function()? programEmpty,
    TResult? Function()? error,
    TResult? Function()? searchEmpty,
  }) {
    return searchEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Program> programs)? loadedSuccess,
    TResult Function()? programEmpty,
    TResult Function()? error,
    TResult Function()? searchEmpty,
    required TResult orElse(),
  }) {
    if (searchEmpty != null) {
      return searchEmpty();
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
    required TResult Function(ProgramStateSearchEmpty value) searchEmpty,
  }) {
    return searchEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgramStateInital value)? initial,
    TResult? Function(ProgramStateLoading value)? loading,
    TResult? Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult? Function(ProgramStateEmpty value)? programEmpty,
    TResult? Function(ProgramStateError value)? error,
    TResult? Function(ProgramStateSearchEmpty value)? searchEmpty,
  }) {
    return searchEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgramStateInital value)? initial,
    TResult Function(ProgramStateLoading value)? loading,
    TResult Function(ProgramStateLoadedSuccess value)? loadedSuccess,
    TResult Function(ProgramStateEmpty value)? programEmpty,
    TResult Function(ProgramStateError value)? error,
    TResult Function(ProgramStateSearchEmpty value)? searchEmpty,
    required TResult orElse(),
  }) {
    if (searchEmpty != null) {
      return searchEmpty(this);
    }
    return orElse();
  }
}

abstract class ProgramStateSearchEmpty implements ProgramState {
  const factory ProgramStateSearchEmpty() = _$ProgramStateSearchEmptyImpl;
}
