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
  List<bool> reponses1 = [false, false];
  List<bool> reponses2 = [false, false, false];
  List<bool> reponses3 = [false, false, false, false];

  List<bool> getRep(int niveau) {
    switch (niveau) {
      case 1:
        return reponses1;
      case 2:
        return reponses2;
      default:
        return reponses3;
    }
  }

  // {} Set all rep to true
  void allRepToTrue(int niveau) {
    switch (niveau) {
      case 1:
        reponses1 = reponses1.map((rep) => true).toList();
        break;
      case 2:
        reponses2 = reponses2.map((rep) => true).toList();
        break;
      default:
        reponses3 = reponses3.map((rep) => true).toList();
        break;
    }
    notifyListeners();
  }

  // {} set all rep to false
  void allRepToFalse(int niveau) {
    switch (niveau) {
      case 1:
        reponses1 = reponses1.map((rep) => false).toList();
        break;
      case 2:
        reponses2 = reponses2.map((rep) => false).toList();
        break;
      default:
        reponses3 = reponses3.map((rep) => false).toList();
        break;
    }
    notifyListeners();
  }
}
