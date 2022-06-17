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
}
