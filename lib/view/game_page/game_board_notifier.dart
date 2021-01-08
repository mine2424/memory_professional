import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
part 'game_board_notifier.freezed.dart';

@freezed
abstract class GameBoradState with _$GameBoradState {
  const factory GameBoradState({
    @Default(0) int pressedIndex,
  }) = _GameBoradState;
}

class GameBoradNotifier extends StateNotifier<GameBoradState>
    with LocatorMixin {
  GameBoradNotifier({@required this.context}) : super(const GameBoradState());

  final BuildContext context;
}
