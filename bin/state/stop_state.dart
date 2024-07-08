import 'abstract/state.dart';

class StopState extends State {
  StopState(super.context);

  @override
  void doAction() {
    context.state = this;
    print("Player is in stop state");
  }

  @override
  String toString() {
    return 'Stop State';
  }
}