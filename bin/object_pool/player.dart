import 'ball.dart';

class Player {
  final String _name;

  Player(this._name);

  void play(Ball? ball) {
    if (ball == null) {
      print("$_name has no ball to play");
    } else {
      print("$_name play: Ball(${ball.number})");
    }
  }
}