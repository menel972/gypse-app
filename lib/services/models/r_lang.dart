import 'package:bible_quiz/services/models/reponse_model.dart';

class RLang {
  String texte;
  String? link;
  String? versetRef;
  String? verset;

  RLang({
    required this.texte,
    this.link,
    this.versetRef,
    this.verset,
  });

  static RLang fromJson(Map<String, dynamic> json) => RLang(
        texte: json['texte'],
        link: json['link'],
        versetRef: json['versetRef'],
        verset: json['verset'],
      );

  Map<String, dynamic> toJson() => {
        "texte": texte,
        "link": link,
        "versetRef": versetRef,
        "verset": verset,
      };

  static RLang getLang(Reponse rep, String locale) {
    switch (locale) {
      case 'en':
        return rep.en!;
      case 'es':
        return rep.es!;
    }
    return rep.fr;
  }
}
