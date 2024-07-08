import 'abstract/state.dart';

class Context {
  State? _state;

  State get state => _state!;

  set state(State value) {
    _state = value;
  }

  Context();
}