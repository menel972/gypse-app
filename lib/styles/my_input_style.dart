import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';

import '../services/enums/couleur.dart';

class MyInputStyle {
  static final inputStyle = InputDecorationTheme(
    border: const UnderlineInputBorder(
        borderSide: BorderSide(color: Couleur.blanc)),
    enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Couleur.blanc)),
    labelStyle: MyTextStyle.labelS,
    counterStyle: MyTextStyle.labelS,
  );
}
