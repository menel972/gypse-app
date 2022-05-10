import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:flutter/material.dart';

class MyTextStyle {
  static TextStyle buttonS = const TextStyle();
  static TextStyle buttonOrangeS = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Couleur.secondAccent,
  );
  static TextStyle buttonWhiteM = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static TextStyle buttonOrangeM = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Couleur.secondAccent,
  );

  static TextStyle titleS = const TextStyle();
  static TextStyle titleM = const TextStyle(
    fontSize: 24,
    color: Colors.white,
  );

  static TextStyle textS = const TextStyle();
  static TextStyle textM = const TextStyle();

  static TextStyle labelS = const TextStyle(
    fontSize: 14,
  );
  static TextStyle labelM = const TextStyle();
}
