class RLang {
  String texte;
  String? versetRef;
  String? verset;

  RLang({
    required this.texte,
    this.versetRef,
    this.verset,
  });

  static RLang fromJson(Map<String, dynamic> json) => RLang(
        texte: json['texte'],
        versetRef: json['versetRef'],
        verset: json['verset'],
      );

  Map<String, dynamic> toJson() => {
        "texte": texte,
        "versetRef": versetRef,
        "verset": verset,
      };
}
