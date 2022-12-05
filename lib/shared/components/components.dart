
import 'dart:math';

import 'package:flutter/Material.dart';

import '../../modules/game/game_screen.dart';
import '../../modules/rusalte/rusalte_screen.dart';

Widget DefaultButtonContainer({
  required String text,
  required Color color,
  IconData? icon,
  double width = 200.0,
  double height = 48.0,
  double radius = 30.0,
  double fontSize = 25.0,
  bool actIcon = true,
  double? widthSizeBox,
  FontWeight fontWeight = FontWeight.bold,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: color,
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    width: width,
    height: height,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
        ),
        SizedBox(
          width: widthSizeBox,
        ),
        Icon(actIcon ? icon : null),
      ],
    ),
  );
}

Widget DefaultContainer({
  required String text,
  required Color color,
  double width = 70.0,
  double height = 35.0,
  double radius = 30.0,
  double fontSize = 25.0,
  FontWeight fontWeight = FontWeight.w700,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: color,
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    ),
  );
}

String Rusalt() {
  if (GameScreenState.me > GameScreenState.you) {
    return "Win !!!";
  } else if (GameScreenState.me < GameScreenState.you) {
    return "Lous !!!";
  } else {
    return "Null !!!";
  }
}
