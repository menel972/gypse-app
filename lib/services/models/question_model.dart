class Question {
  String id;
  String texte;
  String livre;
  bool? resultat;
  bool? facile;
  bool? moyen;
  bool? difficile;

  Question({
    required this.id,
    required this.texte,
    required this.livre,
    this.resultat,
    this.facile,
    this.moyen,
    this.difficile,
  });

  Map<String, dynamic> toJson(String id) => {
        'id': id,
        'texte': texte,
        'livre': livre,
        'facile': facile,
        'resultat': resultat,
        'moyen': moyen,
        'difficile': difficile,
      };

  static Question fromJson(Map<String, dynamic> json) => Question(
        id: json['id'],
        texte: json['texte'],
        livre: json['livre'],
        resultat: json['resultat'],
        facile: json['facile'],
        moyen: json['moyen'],
        difficile: json['difficile'],
      );
}
