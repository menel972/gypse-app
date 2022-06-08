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

  String? testValidator(value, {required int limite}) {
    if (value.length > limite) {
      return 'Votre question est trop longue (${value.length})';
    }
    return null;
  }
}
