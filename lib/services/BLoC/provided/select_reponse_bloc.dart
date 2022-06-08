import 'package:bible_quiz/services/BLoC/bloc.dart';
import 'package:rxdart/rxdart.dart';

class SelectReponseBloc extends Bloc {
  SelectReponseBloc() {
    _selectSink.add(select);
    _facteurSink.add(facteur);
  }

  // = Data
  List<bool> select = [false, false, false, false];
  double facteur = 0.34;

  final _selectController = BehaviorSubject<List<bool>>();
  final _facteurController = BehaviorSubject<double>();

  Sink<List<bool>> get _selectSink => _selectController.sink;
  Sink<double> get _facteurSink => _facteurController.sink;

  Stream<List<bool>> get selectStream => _selectController.stream;
  Stream<double> get facteurStream => _facteurController.stream;

// {} Logic
  void setTrueReponse(int i) {
    select[i] = true;
    _selectSink.add(select);
  }

  void setFalseReponse(int i1, int i2) {
    select[i1] = true;
    select[i2] = true;
    _selectSink.add(select);
  }

  void setAllTrue() => _selectSink.add([true, true, true, true]);
  void setAllFalse() => _selectSink.add(select);

  void increaseFacteur() => _facteurSink.add(0.75);

  void clearFacteur() => _facteurSink.add(facteur);

  @override
  dispose() {
    _selectController.close();
    _facteurController.close();
  } 
}
