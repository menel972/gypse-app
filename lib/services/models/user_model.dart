import 'package:bible_quiz/services/models/settings_model.dart';
import 'package:bible_quiz/services/models/user_question.dart';

class MyUser {
  String id;
  String? userName;
  List<dynamic> questions;
  Setting settings;
  bool isAdmin;

  MyUser({
    required this.id,
    this.userName,
    required this.questions,
    required this.settings,
    required this.isAdmin,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'userName': userName,
        'questions': questions.map((uQ) => uQ.toJson()).toList(),
        'settings': settings.toJson(),
        'isAdmin': isAdmin,
      };

  static MyUser fromJson(Map<String, dynamic> json) => MyUser(
        id: json['id'],
        userName: json['userName'],
        questions:
            json['questions'].map((e) => UserQuestion.fromJson(e)).toList(),
        settings: Setting.fromJson(json['settings']),
        isAdmin: json['isAdmin'],
      );
}
