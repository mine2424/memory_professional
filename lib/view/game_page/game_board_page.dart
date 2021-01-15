import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:memory_professional/view/widget/raise_card.dart';
import 'package:provider/provider.dart';

import 'game_board_notifier.dart';

class GameBoardPage extends StatelessWidget {
  const GameBoardPage._({Key key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<GameBoradNotifier, GameBoradState>(
          create: (context) => GameBoradNotifier(context: context),
        )
      ],
      child: const GameBoardPage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<GameBoradNotifier>();
    final state = context.select((GameBoradState value) => value);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.questionList.length, //state.questionList
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(24),
                  child: blockCard(state.questionList[index], index,notifier),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          notifier.generateQuestionList();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
