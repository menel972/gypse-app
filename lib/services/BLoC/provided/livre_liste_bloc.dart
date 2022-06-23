import 'package:bible_quiz/services/BLoC/bloc.dart';
import 'package:bible_quiz/services/enums/livres.dart';
import 'package:rxdart/rxdart.dart';

class LivreListeBloc extends Bloc {
  LivreListeBloc(String locale) {
    switch (locale) {
      case 'en':
        _sink.add(livresEn);
        break;
      case 'es':
        _sink.add(livresEs);
        break;
      default:
        _sink.add(livresFr);
    }
  }

  // = Data
  List<String> livresFr = LivresFr.livres;
  List<String> livresEn = LivresEn.livres;
  List<String> livresEs = LivresEs.livres;

  final _controller = BehaviorSubject<List<String>>();
  Sink<List<String>> get _sink => _controller.sink;
  Stream<List<String>> get stream => _controller.stream;

  // {} Logic
  void filtre(String filter, String locale) {
    switch (locale) {
      case 'en':
        List<String> filteredLivres = livresEn
            .where(
                (livre) => livre.toLowerCase().startsWith(filter.toLowerCase()))
            .toList();
        _sink.add(filteredLivres);
        break;
      case 'es':
        List<String> filteredLivres = livresEs
            .where(
                (livre) => livre.toLowerCase().startsWith(filter.toLowerCase()))
            .toList();
        _sink.add(filteredLivres);
        break;
      default:
        List<String> filteredLivres = livresFr
        .where((livre) => livre.toLowerCase().startsWith(filter.toLowerCase()))
            .toList();
        _sink.add(filteredLivres);
    }

  }

  void clearFiltre(String locale) {
    switch (locale) {
      case 'en':
        _sink.add(livresEn);
        break;
      case 'es':
        _sink.add(livresEs);
        break;
      default:
        _sink.add(livresFr);
    }
  }

  @override
  dispose() => _controller.close();
}
