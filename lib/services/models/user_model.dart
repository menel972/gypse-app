import 'package:bible_quiz/services/models/settings_model.dart';
import 'package:bible_quiz/services/models/user_question.dart';

class MyUser {
  String id;
  List<dynamic> questions;
  Setting settings;

  MyUser({
    required this.id,
    required this.questions,
    required this.settings,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'questions': questions.map((uQ) => uQ.toJson()).toList(),
        'settings': settings.toJson(),
      };

  static MyUser fromJson(Map<String, dynamic> json) => MyUser(
        id: json['id'],
        questions:
            json['questions'].map((e) => UserQuestion.fromJson(e)).toList(),
        settings: Setting.fromJson(json['settings']),
      );
}
