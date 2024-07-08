import 'data.dart';
import 'interface/behavior.dart';

class DefenceBehavior implements Behavior {
  @override
  Action getAction() {
    return Action.DEFENCE;
  }
}