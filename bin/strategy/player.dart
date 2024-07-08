import 'game_object.dart';

class Player extends GameObject {
  late final GameObject _competitor;


  Player(this._competitor);

  @override
  String getName() {
    return "Player";
  }

  @override
  void update() {
    if (_competitor.strength <= strength) {
      behavior = behaviors[0];
    } else {
      behavior = behaviors[1];
    }
    action = behavior.getAction();
  }
}