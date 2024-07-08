import 'abstract/state.dart';

class StartState extends State {
  StartState(super.context);

  @override
  void doAction() {
    context.state = this;
    print("Player is in start state");
  }

  @override
  String toString() {
    return 'Start State';
  }
}