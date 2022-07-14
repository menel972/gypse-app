class UserQuestion {
  String qId;
  int niveau;
  bool valid;

  UserQuestion({
    required this.qId,
    required this.niveau,
    required this.valid,
  });

  static UserQuestion fromJson(Map<String, dynamic> json) => UserQuestion(
        qId: json['qId'],
        niveau: json['niveau'],
        valid: json['valid'],
      );

  Map<String, dynamic> toJson() => {
        'qId': qId,
        'niveau': niveau,
        'valid': valid,
      };
}
