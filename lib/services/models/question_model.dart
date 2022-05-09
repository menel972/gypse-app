class Question {
  final String id;
  final String texte;
  final String livre;
  final bool? resultat;
  final bool? facile;
  final bool? moyen;
  final bool? difficile;

  Question({
    required this.id,
    required this.texte,
    required this.livre,
    this.resultat,
    this.facile,
    this.moyen,
    this.difficile,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'texte': texte,
        'livre': livre,
        'facile': facile,
        'resultat': resultat,
        'moyen': moyen,
        'difficile': difficile,
      };

  Question fromJson(Map<String, dynamic> json) => Question(
        id: json['id'],
        texte: json['texte'],
        livre: json['livre'],
        resultat: json['resultat'],
        facile: json['facile'],
        moyen: json['moyen'],
        difficile: json['difficile'],
      );
}
