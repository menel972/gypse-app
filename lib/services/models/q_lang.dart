import 'package:bible_quiz/services/models/question_model.dart';

class QLang {
  String texte;
  String livre;

  QLang({
    required this.texte,
    required this.livre,
  });

  static QLang fromJson(Map<String, dynamic> json) => QLang(
        texte: json['texte'],
        livre: json['livre'],
      );

  Map<String, dynamic> toJson() => {
        'texte': texte,
        'livre': livre,
      };

  static QLang getLang(Question q, String locale) {
    switch (locale) {
      case 'en':
        return q.en!;
      case 'es':
        return q.es!;
    }
    return q.fr;
  }
}
