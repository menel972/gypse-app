import 'package:bible_quiz/services/models/user_model.dart';

class Setting {
  int luminosite;
  int niveau;
  int chrono;

  Setting({
    required this.luminosite,
    required this.niveau,
    required this.chrono,
  });

  Map<String, dynamic> toJson() => {
        'luminosite': luminosite,
        'niveau': niveau,
        'chrono': chrono,
      };

  static Setting fromJson(Map<String, dynamic> json) => Setting(
        luminosite: json['luminosite'],
        niveau: json['niveau'],
        chrono: json['chrono'],
      );

  static Setting fromUser(User user) => user.settings;
}
