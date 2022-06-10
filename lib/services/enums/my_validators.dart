import 'livres.dart';

class MyValidators {
  String? isEmpty(value, {required String texte}) {
    if (value!.isEmpty) return 'Vous devez entrer $texte';
    return null;
  }

  String? livreValidator(value) {
    if (value!.isEmpty) return 'Vous devez entrer un livre';
    if (!Livres.livres.contains(value)) {
      return 'Ce livre n\'est pas dans la bible (vérifiez l\'orthographe)';
    }
    return null;
  }

  String? limiteValidator(value, {required String texte, required int limite}) {
    if (value!.isEmpty) return 'Vous devez entrer $texte';
    if (value.length > limite) {
      return 'Votre question est trop longue (max $limite car)';
    }
    return null;
  }

  String? emailValidator(value) {
    RegExp exp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value!.isEmpty) return 'Vous devez entrer une adresse mail';
    if (!exp.hasMatch(value)) {
      return 'Cette adresse mail n\'est pas valide';
    }
    return null;
  }

  String? mdpValidator(value) {
    RegExp majExp = RegExp(r"^(?=.*?[A-Z])");
    RegExp minExp = RegExp(r"^(?=.*?[a-z])");
    RegExp numExp = RegExp(r"^(?=.*?[0-9])");
    RegExp speExp = RegExp(r"^(?=.*?[#?!@$ %^&*_-])");
    if (value!.isEmpty) return 'Vous devez entrer un mot de passe';
    if (!majExp.hasMatch(value)) return 'Il manque au moins une majuscule';
    if (!minExp.hasMatch(value)) return 'Il manque au moins une minuscule';
    if (!numExp.hasMatch(value)) return 'Il manque au moins un chiffre';
    if (!speExp.hasMatch(value)) {
      return 'Il manque au moins un caractère spécial';
    }
    if (value!.length < 8) {
      num delta = 8 - value!.length;
      return 'Il manque au moins $delta caractères - min 8';
    }
    return null;
  }
}
