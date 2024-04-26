// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ColorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() randomizeColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? randomizeColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? randomizeColor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RandomizeColor value) randomizeColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RandomizeColor value)? randomizeColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RandomizeColor value)? randomizeColor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorEventCopyWith<$Res> {
  factory $ColorEventCopyWith(
          ColorEvent value, $Res Function(ColorEvent) then) =
      _$ColorEventCopyWithImpl<$Res, ColorEvent>;
}

/// @nodoc
class _$ColorEventCopyWithImpl<$Res, $Val extends ColorEvent>
    implements $ColorEventCopyWith<$Res> {
  _$ColorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RandomizeColorImplCopyWith<$Res> {
  factory _$$RandomizeColorImplCopyWith(_$RandomizeColorImpl value,
          $Res Function(_$RandomizeColorImpl) then) =
      __$$RandomizeColorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RandomizeColorImplCopyWithImpl<$Res>
    extends _$ColorEventCopyWithImpl<$Res, _$RandomizeColorImpl>
    implements _$$RandomizeColorImplCopyWith<$Res> {
  __$$RandomizeColorImplCopyWithImpl(
      _$RandomizeColorImpl _value, $Res Function(_$RandomizeColorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RandomizeColorImpl implements _RandomizeColor {
  const _$RandomizeColorImpl();

  @override
  String toString() {
    return 'ColorEvent.randomizeColor()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RandomizeColorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() randomizeColor,
  }) {
    return randomizeColor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? randomizeColor,
  }) {
    return randomizeColor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? randomizeColor,
    required TResult orElse(),
  }) {
    if (randomizeColor != null) {
      return randomizeColor();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RandomizeColor value) randomizeColor,
  }) {
    return randomizeColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RandomizeColor value)? randomizeColor,
  }) {
    return randomizeColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RandomizeColor value)? randomizeColor,
    required TResult orElse(),
  }) {
    if (randomizeColor != null) {
      return randomizeColor(this);
    }
    return orElse();
  }
}

abstract class _RandomizeColor implements ColorEvent {
  const factory _RandomizeColor() = _$RandomizeColorImpl;
}

/// @nodoc
mixin _$ColorState {
  Color get randomColor => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Color randomColor, Object? error) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Color randomColor, Object? error)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Color randomColor, Object? error)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleColorState value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleColorState value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleColorState value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ColorStateCopyWith<ColorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorStateCopyWith<$Res> {
  factory $ColorStateCopyWith(
          ColorState value, $Res Function(ColorState) then) =
      _$ColorStateCopyWithImpl<$Res, ColorState>;
  @useResult
  $Res call({Color randomColor, Object? error});
}

/// @nodoc
class _$ColorStateCopyWithImpl<$Res, $Val extends ColorState>
    implements $ColorStateCopyWith<$Res> {
  _$ColorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? randomColor = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      randomColor: null == randomColor
          ? _value.randomColor
          : randomColor // ignore: cast_nullable_to_non_nullable
              as Color,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdleColorStateImplCopyWith<$Res>
    implements $ColorStateCopyWith<$Res> {
  factory _$$IdleColorStateImplCopyWith(_$IdleColorStateImpl value,
          $Res Function(_$IdleColorStateImpl) then) =
      __$$IdleColorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color randomColor, Object? error});
}

/// @nodoc
class __$$IdleColorStateImplCopyWithImpl<$Res>
    extends _$ColorStateCopyWithImpl<$Res, _$IdleColorStateImpl>
    implements _$$IdleColorStateImplCopyWith<$Res> {
  __$$IdleColorStateImplCopyWithImpl(
      _$IdleColorStateImpl _value, $Res Function(_$IdleColorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? randomColor = null,
    Object? error = freezed,
  }) {
    return _then(_$IdleColorStateImpl(
      randomColor: null == randomColor
          ? _value.randomColor
          : randomColor // ignore: cast_nullable_to_non_nullable
              as Color,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$IdleColorStateImpl implements _IdleColorState {
  const _$IdleColorStateImpl({required this.randomColor, this.error});

  @override
  final Color randomColor;
  @override
  final Object? error;

  @override
  String toString() {
    return 'ColorState.idle(randomColor: $randomColor, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleColorStateImpl &&
            (identical(other.randomColor, randomColor) ||
                other.randomColor == randomColor) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, randomColor, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleColorStateImplCopyWith<_$IdleColorStateImpl> get copyWith =>
      __$$IdleColorStateImplCopyWithImpl<_$IdleColorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Color randomColor, Object? error) idle,
  }) {
    return idle(randomColor, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Color randomColor, Object? error)? idle,
  }) {
    return idle?.call(randomColor, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Color randomColor, Object? error)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(randomColor, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleColorState value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleColorState value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleColorState value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleColorState implements ColorState {
  const factory _IdleColorState(
      {required final Color randomColor,
      final Object? error}) = _$IdleColorStateImpl;

  @override
  Color get randomColor;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$IdleColorStateImplCopyWith<_$IdleColorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
