import 'package:bible_quiz/services/models/settings_model.dart';

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
        'questions': questions,
        'settings': settings.toJson(),
      };

  static MyUser fromJson(Map<String, dynamic> json) => MyUser(
        id: json['id'],
        questions: json['questions'],
        settings: Setting.fromJson(json['settings']),
      );
}
