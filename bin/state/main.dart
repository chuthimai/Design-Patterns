import 'context.dart';
import 'start_state.dart';
import 'stop_state.dart';

void main() {
  Context context = Context();

  StartState startState = StartState(context);
  startState.doAction();
  print(context.state);

  StopState stopState = StopState(context);
  stopState.doAction();
  print(context.state);
}