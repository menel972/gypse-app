import 'package:bible_quiz/services/BLoC/bloc.dart';
import 'package:rxdart/rxdart.dart';

class BooleanBloc extends Bloc {
  BooleanBloc() {
    _sink.add(boolean);
  }
  // = Data
  bool boolean = true;
  final _controller = BehaviorSubject<bool>();
  Sink<bool> get _sink => _controller.sink;
  Stream<bool> get stream => _controller.stream;

  // {} Logic
  void switchBoolean() {
    boolean = !boolean;
    _sink.add(boolean);
  }

  @override
  dispose() => _controller.close();
}
