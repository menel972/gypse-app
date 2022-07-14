import 'package:bible_quiz/services/enums/my_locales.dart';
import 'package:bible_quiz/services/models/settings_model.dart';
import 'package:bible_quiz/services/models/user_question.dart';

class MyUser {
  String id;
  String userName;
  MyLocales locale;
  bool isConnected;
  bool isAdmin;
  Setting settings;
  List<UserQuestion> questions;

  MyUser({
    required this.id,
    required this.userName,
    required this.locale,
    required this.isConnected,
    required this.isAdmin,
    required this.settings,
    required this.questions,
  });

  static MyUser fromJson(Map<String, dynamic> json) {
    List<UserQuestion> qs = [];

    json['questions'].forEach((uQ) => qs.add(UserQuestion.fromJson(uQ)));

    return MyUser(
        id: json['id'],
        userName: json['userName'],
        locale: MyLocale().toLocale(json['locale']),
        isConnected: json['isConnected'],
        isAdmin: json['isAdmin'],
        settings: Setting.fromJson(json['settings']),
      questions: qs,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'userName': userName,
        'locale': locale.name,
        'isConnected': isConnected,
        'isAdmin': isAdmin,
        'settings': settings.toJson(),
        'questions': questions.map((q) => q.toJson()).toList(),
      };
}
