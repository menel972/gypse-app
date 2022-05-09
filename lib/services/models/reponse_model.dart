class Reponse {
  final String id;
  final String questionId;
  final String texte;
  final bool confirme;
  final String? versetRef;
  final String? verset;

  Reponse({
    required this.id,
    required this.questionId,
    required this.texte,
    required this.confirme,
    this.versetRef,
    this.verset,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'questionId': questionId,
        'texte': texte,
        'confirme': confirme,
        'versetRef': versetRef,
        'verset': verset,
      };

  Reponse fromJson(Map<String, dynamic> json) => Reponse(
        id: json['id'],
        questionId: json['questionId'],
        texte: json['texte'],
        confirme: json['confirme'],
        versetRef: json['versetRef'],
        verset: json['verset'],
      );
}
