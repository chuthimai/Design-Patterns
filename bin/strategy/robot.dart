import 'dart:math';

import 'game_object.dart';

class Robot extends GameObject {
  @override
  void update() {
    final int index = Random().nextInt(behaviors.length);
    behavior = behaviors[index];
    action = behavior.getAction();
  }

  @override
  String getName() {
    return "Robot";
  }

}