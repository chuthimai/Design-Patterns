import 'data.dart';
import 'game_object.dart';
import 'player.dart';
import 'robot.dart';

class Game {
  late GameObject _winner;
  bool _finished = false;
  late final GameObject _robot;
  late final GameObject _player;

  Game() {
    _robot = Robot();
    _player = Player(_robot);
  }

  void start() {
    while (_finished == false) {
      _update();
      _checkGameFinish();
    }
    print("Game finish, winner is: ${_winner.getName()}");
  }

  void _update() {
    _robot.operator();
    print("Robot's strength is: ${_robot.strength}, action: ${_robot.action.name}");
    _player.operator();
    print("Player's strength is: ${_player.strength}, action: ${_player.action.name}");
  }

  void _checkGameFinish() {
    if (_robot.action == Action.ATTACK && _player.action == Action.ATTACK) {
      if (_robot.strength > _player.strength) {
        _winner = _robot;
        _finished = true;
      } else if (_robot.strength < _player.strength) {
        _winner = _player;
        _finished = true;
      }
    }
  }
}