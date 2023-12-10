// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int bottomNavSelected, String appbarTitle)
        bottomNavTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int bottomNavSelected, String appbarTitle)?
        bottomNavTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int bottomNavSelected, String appbarTitle)?
        bottomNavTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainPageEventStarted value) started,
    required TResult Function(MainPageEventBottomNavTapped value)
        bottomNavTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainPageEventStarted value)? started,
    TResult? Function(MainPageEventBottomNavTapped value)? bottomNavTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainPageEventStarted value)? started,
    TResult Function(MainPageEventBottomNavTapped value)? bottomNavTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageEventCopyWith<$Res> {
  factory $MainPageEventCopyWith(
          MainPageEvent value, $Res Function(MainPageEvent) then) =
      _$MainPageEventCopyWithImpl<$Res, MainPageEvent>;
}

/// @nodoc
class _$MainPageEventCopyWithImpl<$Res, $Val extends MainPageEvent>
    implements $MainPageEventCopyWith<$Res> {
  _$MainPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainPageEventStartedImplCopyWith<$Res> {
  factory _$$MainPageEventStartedImplCopyWith(_$MainPageEventStartedImpl value,
          $Res Function(_$MainPageEventStartedImpl) then) =
      __$$MainPageEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainPageEventStartedImplCopyWithImpl<$Res>
    extends _$MainPageEventCopyWithImpl<$Res, _$MainPageEventStartedImpl>
    implements _$$MainPageEventStartedImplCopyWith<$Res> {
  __$$MainPageEventStartedImplCopyWithImpl(_$MainPageEventStartedImpl _value,
      $Res Function(_$MainPageEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainPageEventStartedImpl implements MainPageEventStarted {
  const _$MainPageEventStartedImpl();

  @override
  String toString() {
    return 'MainPageEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainPageEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int bottomNavSelected, String appbarTitle)
        bottomNavTapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int bottomNavSelected, String appbarTitle)?
        bottomNavTapped,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int bottomNavSelected, String appbarTitle)?
        bottomNavTapped,
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
    required TResult Function(MainPageEventStarted value) started,
    required TResult Function(MainPageEventBottomNavTapped value)
        bottomNavTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainPageEventStarted value)? started,
    TResult? Function(MainPageEventBottomNavTapped value)? bottomNavTapped,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainPageEventStarted value)? started,
    TResult Function(MainPageEventBottomNavTapped value)? bottomNavTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class MainPageEventStarted implements MainPageEvent {
  const factory MainPageEventStarted() = _$MainPageEventStartedImpl;
}

/// @nodoc
abstract class _$$MainPageEventBottomNavTappedImplCopyWith<$Res> {
  factory _$$MainPageEventBottomNavTappedImplCopyWith(
          _$MainPageEventBottomNavTappedImpl value,
          $Res Function(_$MainPageEventBottomNavTappedImpl) then) =
      __$$MainPageEventBottomNavTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int bottomNavSelected, String appbarTitle});
}

/// @nodoc
class __$$MainPageEventBottomNavTappedImplCopyWithImpl<$Res>
    extends _$MainPageEventCopyWithImpl<$Res,
        _$MainPageEventBottomNavTappedImpl>
    implements _$$MainPageEventBottomNavTappedImplCopyWith<$Res> {
  __$$MainPageEventBottomNavTappedImplCopyWithImpl(
      _$MainPageEventBottomNavTappedImpl _value,
      $Res Function(_$MainPageEventBottomNavTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavSelected = null,
    Object? appbarTitle = null,
  }) {
    return _then(_$MainPageEventBottomNavTappedImpl(
      bottomNavSelected: null == bottomNavSelected
          ? _value.bottomNavSelected
          : bottomNavSelected // ignore: cast_nullable_to_non_nullable
              as int,
      appbarTitle: null == appbarTitle
          ? _value.appbarTitle
          : appbarTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainPageEventBottomNavTappedImpl
    implements MainPageEventBottomNavTapped {
  const _$MainPageEventBottomNavTappedImpl(
      {required this.bottomNavSelected, required this.appbarTitle});

  @override
  final int bottomNavSelected;
  @override
  final String appbarTitle;

  @override
  String toString() {
    return 'MainPageEvent.bottomNavTapped(bottomNavSelected: $bottomNavSelected, appbarTitle: $appbarTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainPageEventBottomNavTappedImpl &&
            (identical(other.bottomNavSelected, bottomNavSelected) ||
                other.bottomNavSelected == bottomNavSelected) &&
            (identical(other.appbarTitle, appbarTitle) ||
                other.appbarTitle == appbarTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bottomNavSelected, appbarTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainPageEventBottomNavTappedImplCopyWith<
          _$MainPageEventBottomNavTappedImpl>
      get copyWith => __$$MainPageEventBottomNavTappedImplCopyWithImpl<
          _$MainPageEventBottomNavTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int bottomNavSelected, String appbarTitle)
        bottomNavTapped,
  }) {
    return bottomNavTapped(bottomNavSelected, appbarTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int bottomNavSelected, String appbarTitle)?
        bottomNavTapped,
  }) {
    return bottomNavTapped?.call(bottomNavSelected, appbarTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int bottomNavSelected, String appbarTitle)?
        bottomNavTapped,
    required TResult orElse(),
  }) {
    if (bottomNavTapped != null) {
      return bottomNavTapped(bottomNavSelected, appbarTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainPageEventStarted value) started,
    required TResult Function(MainPageEventBottomNavTapped value)
        bottomNavTapped,
  }) {
    return bottomNavTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainPageEventStarted value)? started,
    TResult? Function(MainPageEventBottomNavTapped value)? bottomNavTapped,
  }) {
    return bottomNavTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainPageEventStarted value)? started,
    TResult Function(MainPageEventBottomNavTapped value)? bottomNavTapped,
    required TResult orElse(),
  }) {
    if (bottomNavTapped != null) {
      return bottomNavTapped(this);
    }
    return orElse();
  }
}

abstract class MainPageEventBottomNavTapped implements MainPageEvent {
  const factory MainPageEventBottomNavTapped(
      {required final int bottomNavSelected,
      required final String appbarTitle}) = _$MainPageEventBottomNavTappedImpl;

  int get bottomNavSelected;
  String get appbarTitle;
  @JsonKey(ignore: true)
  _$$MainPageEventBottomNavTappedImplCopyWith<
          _$MainPageEventBottomNavTappedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainPageState {
  int get bottomNavSelected => throw _privateConstructorUsedError;
  String get appbarTitle => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int bottomNavSelected, String appbarTitle)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int bottomNavSelected, String appbarTitle)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int bottomNavSelected, String appbarTitle)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainPageStateInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainPageStateInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainPageStateInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageStateCopyWith<MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageStateCopyWith<$Res> {
  factory $MainPageStateCopyWith(
          MainPageState value, $Res Function(MainPageState) then) =
      _$MainPageStateCopyWithImpl<$Res, MainPageState>;
  @useResult
  $Res call({int bottomNavSelected, String appbarTitle});
}

/// @nodoc
class _$MainPageStateCopyWithImpl<$Res, $Val extends MainPageState>
    implements $MainPageStateCopyWith<$Res> {
  _$MainPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavSelected = null,
    Object? appbarTitle = null,
  }) {
    return _then(_value.copyWith(
      bottomNavSelected: null == bottomNavSelected
          ? _value.bottomNavSelected
          : bottomNavSelected // ignore: cast_nullable_to_non_nullable
              as int,
      appbarTitle: null == appbarTitle
          ? _value.appbarTitle
          : appbarTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainPageStateInitialImplCopyWith<$Res>
    implements $MainPageStateCopyWith<$Res> {
  factory _$$MainPageStateInitialImplCopyWith(_$MainPageStateInitialImpl value,
          $Res Function(_$MainPageStateInitialImpl) then) =
      __$$MainPageStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bottomNavSelected, String appbarTitle});
}

/// @nodoc
class __$$MainPageStateInitialImplCopyWithImpl<$Res>
    extends _$MainPageStateCopyWithImpl<$Res, _$MainPageStateInitialImpl>
    implements _$$MainPageStateInitialImplCopyWith<$Res> {
  __$$MainPageStateInitialImplCopyWithImpl(_$MainPageStateInitialImpl _value,
      $Res Function(_$MainPageStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavSelected = null,
    Object? appbarTitle = null,
  }) {
    return _then(_$MainPageStateInitialImpl(
      bottomNavSelected: null == bottomNavSelected
          ? _value.bottomNavSelected
          : bottomNavSelected // ignore: cast_nullable_to_non_nullable
              as int,
      appbarTitle: null == appbarTitle
          ? _value.appbarTitle
          : appbarTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainPageStateInitialImpl implements MainPageStateInitial {
  const _$MainPageStateInitialImpl(
      {required this.bottomNavSelected, required this.appbarTitle});

  @override
  final int bottomNavSelected;
  @override
  final String appbarTitle;

  @override
  String toString() {
    return 'MainPageState.initial(bottomNavSelected: $bottomNavSelected, appbarTitle: $appbarTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainPageStateInitialImpl &&
            (identical(other.bottomNavSelected, bottomNavSelected) ||
                other.bottomNavSelected == bottomNavSelected) &&
            (identical(other.appbarTitle, appbarTitle) ||
                other.appbarTitle == appbarTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bottomNavSelected, appbarTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainPageStateInitialImplCopyWith<_$MainPageStateInitialImpl>
      get copyWith =>
          __$$MainPageStateInitialImplCopyWithImpl<_$MainPageStateInitialImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int bottomNavSelected, String appbarTitle)
        initial,
  }) {
    return initial(bottomNavSelected, appbarTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int bottomNavSelected, String appbarTitle)? initial,
  }) {
    return initial?.call(bottomNavSelected, appbarTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int bottomNavSelected, String appbarTitle)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(bottomNavSelected, appbarTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainPageStateInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainPageStateInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainPageStateInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MainPageStateInitial implements MainPageState {
  const factory MainPageStateInitial(
      {required final int bottomNavSelected,
      required final String appbarTitle}) = _$MainPageStateInitialImpl;

  @override
  int get bottomNavSelected;
  @override
  String get appbarTitle;
  @override
  @JsonKey(ignore: true)
  _$$MainPageStateInitialImplCopyWith<_$MainPageStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
