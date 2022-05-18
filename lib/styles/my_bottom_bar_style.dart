import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';

class MyBottomBarStyle {
  static BottomNavigationBarThemeData bottomStyle =
      BottomNavigationBarThemeData(
    type: BottomNavigationBarType.shifting,
    backgroundColor: Couleur.blanc,
    elevation: 0,
    selectedItemColor: Couleur.secondary,
    selectedIconTheme: const IconThemeData(
      color: Couleur.secondary,
      size: 30,
    ),
    selectedLabelStyle: MyTextStyle.labelS,
    unselectedIconTheme: const IconThemeData(
      color: Couleur.labelNoir,
      size: 25,
    ),
    showUnselectedLabels: false,
  );
}
