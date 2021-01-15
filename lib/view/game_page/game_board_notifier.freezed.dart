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
  _GameBoradState call(
      {int answerIndex = 0, List<bool> questionList, List<int> answerList}) {
    return _GameBoradState(
      answerIndex: answerIndex,
      questionList: questionList,
      answerList: answerList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GameBoradState = _$GameBoradStateTearOff();

/// @nodoc
mixin _$GameBoradState {
  int get answerIndex;
  List<bool> get questionList;
  List<int> get answerList;

  $GameBoradStateCopyWith<GameBoradState> get copyWith;
}

/// @nodoc
abstract class $GameBoradStateCopyWith<$Res> {
  factory $GameBoradStateCopyWith(
          GameBoradState value, $Res Function(GameBoradState) then) =
      _$GameBoradStateCopyWithImpl<$Res>;
  $Res call({int answerIndex, List<bool> questionList, List<int> answerList});
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
    Object answerIndex = freezed,
    Object questionList = freezed,
    Object answerList = freezed,
  }) {
    return _then(_value.copyWith(
      answerIndex:
          answerIndex == freezed ? _value.answerIndex : answerIndex as int,
      questionList: questionList == freezed
          ? _value.questionList
          : questionList as List<bool>,
      answerList:
          answerList == freezed ? _value.answerList : answerList as List<int>,
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
  $Res call({int answerIndex, List<bool> questionList, List<int> answerList});
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
    Object answerIndex = freezed,
    Object questionList = freezed,
    Object answerList = freezed,
  }) {
    return _then(_GameBoradState(
      answerIndex:
          answerIndex == freezed ? _value.answerIndex : answerIndex as int,
      questionList: questionList == freezed
          ? _value.questionList
          : questionList as List<bool>,
      answerList:
          answerList == freezed ? _value.answerList : answerList as List<int>,
    ));
  }
}

/// @nodoc
class _$_GameBoradState implements _GameBoradState {
  const _$_GameBoradState(
      {this.answerIndex = 0, this.questionList, this.answerList})
      : assert(answerIndex != null);

  @JsonKey(defaultValue: 0)
  @override
  final int answerIndex;
  @override
  final List<bool> questionList;
  @override
  final List<int> answerList;

  @override
  String toString() {
    return 'GameBoradState(answerIndex: $answerIndex, questionList: $questionList, answerList: $answerList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameBoradState &&
            (identical(other.answerIndex, answerIndex) ||
                const DeepCollectionEquality()
                    .equals(other.answerIndex, answerIndex)) &&
            (identical(other.questionList, questionList) ||
                const DeepCollectionEquality()
                    .equals(other.questionList, questionList)) &&
            (identical(other.answerList, answerList) ||
                const DeepCollectionEquality()
                    .equals(other.answerList, answerList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(answerIndex) ^
      const DeepCollectionEquality().hash(questionList) ^
      const DeepCollectionEquality().hash(answerList);

  @override
  _$GameBoradStateCopyWith<_GameBoradState> get copyWith =>
      __$GameBoradStateCopyWithImpl<_GameBoradState>(this, _$identity);
}

abstract class _GameBoradState implements GameBoradState {
  const factory _GameBoradState(
      {int answerIndex,
      List<bool> questionList,
      List<int> answerList}) = _$_GameBoradState;

  @override
  int get answerIndex;
  @override
  List<bool> get questionList;
  @override
  List<int> get answerList;
  @override
  _$GameBoradStateCopyWith<_GameBoradState> get copyWith;
}
