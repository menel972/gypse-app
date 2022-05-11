import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:flutter/material.dart';

class MyTextStyle {
  static TextStyle buttonS = const TextStyle();
  static TextStyle buttonOrangeS = const TextStyle(
    fontFamily: 'NotoSansDisplay',
    fontSize: 14,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w500,
    color: Couleur.secondAccent,
  );
  static TextStyle buttonWhiteM = const TextStyle(
    fontFamily: 'NotoSansDisplay',
    fontSize: 16,
    letterSpacing: 1,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static TextStyle buttonOrangeM = const TextStyle(
    fontFamily: 'NotoSansDisplay',
    fontSize: 16,
    letterSpacing: 1,
    fontWeight: FontWeight.w600,
    color: Couleur.secondAccent,
  );

  static TextStyle titleS = const TextStyle();
  static TextStyle titleM = const TextStyle(
    fontFamily: 'NotoSansDisplay',
    fontWeight: FontWeight.w600,
    fontSize: 24,
    letterSpacing: 1.5,
    color: Couleur.textBleu,
  );

  static TextStyle textS = const TextStyle();
  static TextStyle textM = const TextStyle();

  static TextStyle labelS = const TextStyle(
    fontFamily: 'NotoSansDisplay',
    fontSize: 14,
    letterSpacing: 0.5,
  );
  static TextStyle labelM = const TextStyle();
}
