import '../context.dart';

abstract class State {
  Context context;
  State(this.context);

  void doAction();
}