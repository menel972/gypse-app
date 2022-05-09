class Question {
  final String id;
  final String texte;
  final bool? facile;
  final bool? moyen;
  final bool? difficile;

  Question({
    required this.id,
    required this.texte,
    this.facile,
    this.moyen,
    this.difficile,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'texte': texte,
        'facile': facile,
        'moyen': moyen,
        'difficile': difficile,
      };

  Question fromJson(Map<String, dynamic> json) => Question(
        id: json['id'],
        texte: json['texte'],
        facile: json['facile'],
        moyen: json['moyen'],
        difficile: json['difficile'],
      );
}
