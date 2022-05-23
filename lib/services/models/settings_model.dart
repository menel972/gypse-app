import 'package:bible_quiz/services/models/user_model.dart';

class Setting {
  int niveau;
  int chrono;

  Setting({
    required this.niveau,
    required this.chrono,
  });

  Map<String, dynamic> toJson() => {
        'niveau': niveau,
        'chrono': chrono,
      };

  static Setting fromJson(Map<String, dynamic> json) => Setting(
        niveau: json['niveau'],
        chrono: json['chrono'],
      );

  static Setting fromUser(MyUser user) => user.settings;
}
