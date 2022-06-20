// class Reponse {
//   String id;
//   String questionId;
//   String texte;
//   bool confirme;
//   String? versetRef;
//   String? verset;

//   Reponse({
//     required this.id,
//     required this.questionId,
//     required this.texte,
//     required this.confirme,
//     this.versetRef,
//     this.verset,
//   });

//   Map<String, dynamic> toJson(String id) :> {
//         'id': id,
//         'questionId': questionId,
//         'texte': texte,
//         'confirme': confirme,
//         'versetRef': versetRef,
//         'verset': verset,
//       };

//   static Reponse fromJson(Map<String, dynamic> json) :> Reponse(
//         id: json['id'],
//         questionId: json['questionId'],
//         texte: json['texte'],
//         confirme: json['confirme'],
//         versetRef: json['versetRef'],
//         verset: json['verset'],
//       );
// }

import 'package:bible_quiz/services/models/r_lang.dart';

class Reponse {
  String id;
  String questionId;
  bool confirme;
  RLang fr;
  RLang? en;
  RLang? es;

  Reponse({
    required this.id,
    required this.questionId,
    required this.confirme,
    required this.fr,
    this.en,
    this.es,
  });

  static Reponse fromJson(Map<String, dynamic> json) => Reponse(
        id: json['id'],
        questionId: json['questionId'],
        confirme: json['confirme'],
        fr: RLang.fromJson(json['fr']),
        en: json['en'] != null ? RLang.fromJson(json['en']) : null,
        es: json['es'] != null ? RLang.fromJson(json['es']) : null,
      );

  Map<String, dynamic> toJson(String rid) => {
        "id": rid,
        "questionId": questionId,
        "confirme": confirme,
        "fr": fr.toJson(),
        "en": en != null ? en!.toJson() : null,
        "es": es != null ? es!.toJson() : null,
      };
}
