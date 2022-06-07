import 'package:bible_quiz/services/BLoC/bloc.dart';
import 'package:rxdart/rxdart.dart';

class SelectReponseBloc extends Bloc {
  SelectReponseBloc() {
    _sink.add(select);
  }

  // = Data
  List<bool> select = [false, false, false, false];

  final _controller = BehaviorSubject<List<bool>>();

  Sink get _sink => _controller.sink;

  Stream<List<bool>> get stream => _controller.stream;

// {} Logic
  void setTrueReponse(int i) {
    select[i] = true;
    _sink.add(select);
  }

  void setFalseReponse(int i1, int i2) {
    select[i1] = true;
    select[i2] = true;
    _sink.add(select);
  }

  void setAllTrue() => _sink.add([true, true, true, true]);
  void setAllFalse() => _sink.add(select);

  @override
  dispose() => _controller.close();
}
