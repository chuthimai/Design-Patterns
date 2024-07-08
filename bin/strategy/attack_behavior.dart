import 'data.dart';
import 'interface/behavior.dart';

class AttackBehavior implements Behavior {
  @override
  Action getAction() {
    return Action.ATTACK;
  }
}