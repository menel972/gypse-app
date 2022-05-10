import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyAppbarStyle {
  static AppBarTheme appbarStyle = AppBarTheme(
      backgroundColor: Couleur.primary,
      elevation: 0,
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Couleur.primary),
      toolbarHeight: 40.0,
      actionsIconTheme: IconThemeData(
        color: Couleur.secondary.withOpacity(0.8),
        size: 30,
      ));
}
