// class Question {
//   String id;
//   String texte;
//   String livre;
//   bool? resultat;
//   bool? facile;
//   bool? moyen;
//   bool? difficile;

//   Question({
//     required this.id,
//     required this.texte,
//     required this.livre,
//     this.resultat,
//     this.facile,
//     this.moyen,
//     this.difficile,
//   });

//   Map<String, dynamic> toJson(String id) => {
//         'id': id,
//         'texte': texte,
//         'livre': livre,
//         'facile': facile,
//         'resultat': resultat,
//         'moyen': moyen,
//         'difficile': difficile,
//       };

//   static Question fromJson(Map<String, dynamic> json) => Question(
//         id: json['id'],
//         texte: json['texte'],
//         livre: json['livre'],
//         resultat: json['resultat'],
//         facile: json['facile'],
//         moyen: json['moyen'],
//         difficile: json['difficile'],
//       );
// }

import 'package:bible_quiz/services/models/q_lang.dart';

class Question {
  String id;
  QLang fr;
  QLang? en;
  QLang? es;

  Question({
    required this.id,
    required this.fr,
    this.en,
    this.es,
  });

  static Question fromJson(Map<String, dynamic> json) => Question(
        id: json['id'],
        fr: QLang.fromJson(json['fr']),
        en: json['en'] != null ? QLang.fromJson(json['en']) : null,
        es: json['es'] != null ? QLang.fromJson(json['es']) : null,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fr": fr,
        "en": en != null ? en!.toJson() : null,
        "es": en != null ? es!.toJson() : null
      };
}


