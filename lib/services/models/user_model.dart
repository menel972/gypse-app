import 'package:bible_quiz/services/models/settings_model.dart';

class User {
  final String id;
  final List<dynamic> questions;
  final Setting settings;

  User({
    required this.id,
    required this.questions,
    required this.settings,
  });

  Map<String, dynamic> toJson(String id) => {
        'id': id,
        'questions': questions,
        'settings': settings.toJson(),
      };

  static User fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        questions: json['questions'],
        settings: Setting.fromJson(json['settings']),
      );
}
