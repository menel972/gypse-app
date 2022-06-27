import 'package:bible_quiz/services/enums/my_locales.dart';
import 'package:bible_quiz/services/models/user_model.dart';
import 'package:flutter/material.dart';

import '../models/settings_model.dart';

class Method {
  static const String mdp = 'Email';
  static const String g = 'Google';
  static const String fb = 'Facebook';
  static const String apl = 'Apple';
}

class UserProvider with ChangeNotifier {
  // NOTE : User mock
  MyUser user = MyUser(
    id: 'id',
    userName: '',
    locale: MyLocales.fr,
    isConnected: true,
    questions: [],
    settings: Setting(
      niveau: 3,
      chrono: 30,
    ),
    isAdmin: false,
  );

  List<dynamic> get userQuestions => user.questions;
  Setting get userSettings => user.settings;

  String userIdMethod = Method.mdp;

  void setMethod(String method) {
    userIdMethod = method;
    notifyListeners();
  }

  void setUser(MyUser dbUser) {
    user = dbUser;
    notifyListeners();
  }

  // void saveAnsweredQuestion(String questionId) {
  //   user.questions.add();
  //   notifyListeners();
  // }

  void saveNewSettings(Setting newSet) {
    user.settings = newSet;
    notifyListeners();
  }

  // NOTE : Reponse
  // = reponses
  List<bool> reponses = [false, false, false, false];

  // {} Set all rep to true
  void allRepToTrue() {
    reponses = reponses.map((rep) => true).toList();
    notifyListeners();
  }

  // {} set all rep to false
  void allRepToFalse() {
    reponses = reponses.map((rep) => false).toList();
    notifyListeners();
  }
}
