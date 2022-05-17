import 'package:bible_quiz/services/models/settings_model.dart';
import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
// NOTE : Preset
  // = Preset du jeu
  Settings settings = Settings(
    luminosite: 2,
    niveau: 3,
    chrono: 30,
  );

  // {} Modifie les settings
  void changeSettings(Settings newSet) {
    settings = newSet;
    notifyListeners();
  }

  // NOTE : Reponse
  // = reponses
  List<bool> reponses = [false, false, false, false];

  // {} Set all rep to true
  void allRepToTrue(int niveau) {
    reponses = reponses.map((rep) => true).toList();
    notifyListeners();
  }

  // {} set all rep to false
  void allRepToFalse(int niveau) {
    reponses = reponses.map((rep) => false).toList();

    notifyListeners();
  }
}
