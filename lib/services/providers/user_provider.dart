import 'package:bible_quiz/services/models/user_model.dart';
import 'package:flutter/material.dart';

import '../models/settings_model.dart';

class UserProvider with ChangeNotifier {
  // NOTE : User mock
  User user = User(
    id: 'id',
    questions: [],
    settings: Setting(
      luminosite: 2,
      niveau: 3,
      chrono: 30,
    ),
  );

  List<dynamic> get userQuestions => user.questions;

  void setUser(User dbUser) {
    user = dbUser;
    notifyListeners();
  }

  void saveAnsweredQuestion(String questionId) {
    user.questions.add(questionId);
    notifyListeners();
  }
}
