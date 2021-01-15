import 'package:flutter/material.dart';
import '../game_page/game_board_notifier.dart';

Color mC = Colors.grey.shade100;
Color mCL = Colors.white;
Color mCD = Colors.black.withOpacity(0.12);
Color mCC = Colors.green.withOpacity(0.65);
Color fCD = Colors.grey.shade700;
Color fCL = Colors.grey;

BoxDecoration nMbox = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: mC,
    boxShadow: [
      BoxShadow(
        color: mCD,
        offset: const Offset(10, 10),
        blurRadius: 10,
      ),
      BoxShadow(
        color: mCL,
        offset: const Offset(-10, -10),
        blurRadius: 10,
      ),
    ]);

BoxDecoration nMboxInvert = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: mCD,
    boxShadow: [
      BoxShadow(
          color: mCL,
          offset: const Offset(3, 3),
          blurRadius: 3,
          spreadRadius: -3),
    ]);

BoxDecoration nMboxInvertActive = nMboxInvert.copyWith(color: mCC);

BoxDecoration nMbtn = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: mC,
    boxShadow: [
      BoxShadow(
        color: mCD,
        offset: const Offset(2, 2),
        blurRadius: 2,
      )
    ]);

Widget blockCard(bool down, int index, GameBoradNotifier notifier) {
  return Container(
    width: 55,
    height: 55,
    decoration: down ? nMboxInvert : nMbox,
    child: FlatButton(
      onPressed: () => notifier.comfirmYourAnswer(index),
      child: Text(
        index.toString(),
        style: TextStyle(color: down ? fCD : fCL),
      ),
    ),
  );
}
