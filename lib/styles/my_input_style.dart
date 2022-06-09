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

  static InputDecoration ajoutInputStyle(String label, IconData icon) =>
      InputDecoration(
        labelText: label,
        labelStyle: MyTextStyle.labelS,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Couleur.primAccent)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Couleur.secondary, width: 2)),
        filled: true,
        fillColor: Couleur.bleuClair.withOpacity(0.1),
        suffixIcon: Icon(
          icon,
          color: Couleur.blanc,
        ),
      );

  static InputDecoration connexionInputStyle(String label, IconData icon) =>
      InputDecoration(
        labelText: label,
        labelStyle: MyTextStyle.labelS,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Couleur.primAccent)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Couleur.primary, width: 2)),
        filled: true,
        fillColor: Couleur.bleuClair.withOpacity(0.2),
        suffixIcon: Icon(
          icon,
          color: Couleur.blanc,
        ),
      );

  static InputDecoration mdpInputStyle(String label, Widget icon) =>
      InputDecoration(
        labelText: label,
        labelStyle: MyTextStyle.labelS,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Couleur.primAccent)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Couleur.secondary, width: 2)),
        filled: true,
        fillColor: Couleur.bleuClair.withOpacity(0.2),
        suffixIcon: icon,
      );
}
