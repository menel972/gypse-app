import 'package:bible_quiz/services/BLoC/bloc.dart';
import 'package:bible_quiz/services/enums/livres.dart';
import 'package:rxdart/rxdart.dart';

class LivreListeBloc extends Bloc {
  LivreListeBloc() {
    _sink.add(livres);
  }

  // = Data
  List<String> livres = Livres.livres;
  final _controller = BehaviorSubject<List<String>>();
  Sink<List<String>> get _sink => _controller.sink;
  Stream<List<String>> get stream => _controller.stream;

  // {} Logic
  void filtre(String filter) {
    List<String> filteredLivres = livres
        .where((livre) => livre.toLowerCase().startsWith(filter.toLowerCase()))
        .toList();

    _sink.add(filteredLivres);
  }

  void clearFiltre() => _sink.add(livres);

  @override
  dispose() => _controller.close();
}
