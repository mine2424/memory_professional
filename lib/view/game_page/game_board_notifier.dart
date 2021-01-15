import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
part 'game_board_notifier.freezed.dart';

@freezed
abstract class GameBoradState with _$GameBoradState {
  const factory GameBoradState({
    @Default(0) int answerIndex,
    List<bool> questionList,
    List<int> answerList,
  }) = _GameBoradState;
}

class GameBoradNotifier extends StateNotifier<GameBoradState>
    with LocatorMixin {
  GameBoradNotifier({@required this.context}) : super(const GameBoradState());

  final BuildContext context;

  List<bool> questionList = [];
  List<int> tmpIndexList = [];

  @override
  void initState() {
    generateQuestionList();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  //TODO 出題中の処理

  Duration finishInterval() => const Duration(seconds: 2);

  void comfirmYourAnswer(int index) {
    //現在のanswer数と回答者のanswer数が一致したら答え合わせ
    if (tmpIndexList.length == state.answerList.length) {
      int count = 0;
      // 答えを確かめるfor
      for (var i = 0; i < state.answerList.length; i++) {
        // tmpとanswerが全部一致したらclear
        if (state.answerList[i] == tmpIndexList[i]) {
          count++;
          print('now count is $count');
        } else {
          //TODO　終了のダイアログ
          print('miss');
        }
      }
      //全部正解したらクリア！＝ カウントが一致したら
      if (count == state.answerList.length) {
        print('clear !');
        finishInterval();
        generateQuestionList();
      }
    } else if (tmpIndexList.length < state.answerList.length) {
      tmpIndexList.add(index);
    } else {
      print('end');
      return;
    }
  }

  void generateQuestionList() {
    questionList = [];
    final questionNum = Random().nextInt(8);
    state = state.copyWith(answerIndex: questionNum);
    addAnswerList(questionNum);
    print(questionNum.toString());
    for (var i = 0; i < 9; i++) {
      if (questionNum == i) {
        questionList.add(true);
      } else {
        questionList.add(false);
      }
    }
    state = state.copyWith(questionList: questionList);
  }

  void addAnswerList(int index) {
    List<int> addAnswerList = []..add(index);
    if (state.answerList != null) {
      for (var i = 0; i < state.answerList.length; i++) {
        addAnswerList.add(state.answerList[i]);
      }
    }
    state = state.copyWith(answerList: addAnswerList);
  }
}
