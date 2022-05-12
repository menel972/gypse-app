import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyAppbarStyle {
  static AppBarTheme appbarStyle = AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      toolbarHeight: 40.0,
      iconTheme: IconThemeData(
        color: Couleur.secondary.withOpacity(0.8),
        size: 30,
      ),
      actionsIconTheme: IconThemeData(
        color: Couleur.secondary.withOpacity(0.8),
        size: 30,
      ));
}
