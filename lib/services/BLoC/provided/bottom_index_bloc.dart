import 'package:bible_quiz/services/BLoC/bloc.dart';
import 'package:rxdart/rxdart.dart';

class BottomIndexBloc extends Bloc {
  BottomIndexBloc() {
    _sink.add(index);
  }
  // = Data
  int index = 0;

  final _controller = BehaviorSubject<int>();
  Sink<int> get _sink => _controller.sink;
  Stream<int> get stream => _controller.stream;

  // {} Logic
  void setIndex(int i) => _sink.add(i);

  @override
  dispose() => _controller.close();
}
