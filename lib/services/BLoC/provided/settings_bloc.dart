import 'package:bible_quiz/services/BLoC/bloc.dart';
import 'package:bible_quiz/services/models/settings_model.dart';
import 'package:rxdart/rxdart.dart';

class SettingsBloc extends Bloc {
  final Setting preset;
  SettingsBloc({required this.preset}) {
    _sink.add(preset);
  }

  // = Data
  final _controller = BehaviorSubject<Setting>();
  Sink<Setting> get _sink => _controller.sink;
  Stream<Setting> get stream => _controller.stream;

  // {} Logic
  void setLevel(int i) {
    preset.niveau = i;
    _sink.add(preset);
  }

  void setChrono(int i) {
    preset.chrono = i;
    _sink.add(preset);
  }

  @override
  dispose() => _controller.close();
}
