// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'game_board_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GameBoradStateTearOff {
  const _$GameBoradStateTearOff();

// ignore: unused_element
  _GameBoradState call({int pressedIndex = 0}) {
    return _GameBoradState(
      pressedIndex: pressedIndex,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GameBoradState = _$GameBoradStateTearOff();

/// @nodoc
mixin _$GameBoradState {
  int get pressedIndex;

  $GameBoradStateCopyWith<GameBoradState> get copyWith;
}

/// @nodoc
abstract class $GameBoradStateCopyWith<$Res> {
  factory $GameBoradStateCopyWith(
          GameBoradState value, $Res Function(GameBoradState) then) =
      _$GameBoradStateCopyWithImpl<$Res>;
  $Res call({int pressedIndex});
}

/// @nodoc
class _$GameBoradStateCopyWithImpl<$Res>
    implements $GameBoradStateCopyWith<$Res> {
  _$GameBoradStateCopyWithImpl(this._value, this._then);

  final GameBoradState _value;
  // ignore: unused_field
  final $Res Function(GameBoradState) _then;

  @override
  $Res call({
    Object pressedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      pressedIndex:
          pressedIndex == freezed ? _value.pressedIndex : pressedIndex as int,
    ));
  }
}

/// @nodoc
abstract class _$GameBoradStateCopyWith<$Res>
    implements $GameBoradStateCopyWith<$Res> {
  factory _$GameBoradStateCopyWith(
          _GameBoradState value, $Res Function(_GameBoradState) then) =
      __$GameBoradStateCopyWithImpl<$Res>;
  @override
  $Res call({int pressedIndex});
}

/// @nodoc
class __$GameBoradStateCopyWithImpl<$Res>
    extends _$GameBoradStateCopyWithImpl<$Res>
    implements _$GameBoradStateCopyWith<$Res> {
  __$GameBoradStateCopyWithImpl(
      _GameBoradState _value, $Res Function(_GameBoradState) _then)
      : super(_value, (v) => _then(v as _GameBoradState));

  @override
  _GameBoradState get _value => super._value as _GameBoradState;

  @override
  $Res call({
    Object pressedIndex = freezed,
  }) {
    return _then(_GameBoradState(
      pressedIndex:
          pressedIndex == freezed ? _value.pressedIndex : pressedIndex as int,
    ));
  }
}

/// @nodoc
class _$_GameBoradState implements _GameBoradState {
  const _$_GameBoradState({this.pressedIndex = 0})
      : assert(pressedIndex != null);

  @JsonKey(defaultValue: 0)
  @override
  final int pressedIndex;

  @override
  String toString() {
    return 'GameBoradState(pressedIndex: $pressedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameBoradState &&
            (identical(other.pressedIndex, pressedIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pressedIndex, pressedIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pressedIndex);

  @override
  _$GameBoradStateCopyWith<_GameBoradState> get copyWith =>
      __$GameBoradStateCopyWithImpl<_GameBoradState>(this, _$identity);
}

abstract class _GameBoradState implements GameBoradState {
  const factory _GameBoradState({int pressedIndex}) = _$_GameBoradState;

  @override
  int get pressedIndex;
  @override
  _$GameBoradStateCopyWith<_GameBoradState> get copyWith;
}
